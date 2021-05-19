import json
from json.decoder         import JSONDecodeError

from django.http.response import JsonResponse
from django.views         import View

from orders.models        import Order, OrderItem
from products.models      import ProductOption
from util.utils           import login_required

class CartView(View):
    ORDER_STATUS = '장바구니'

    @login_required
    def put(self, request):
        try:
            data                = json.loads(request.body)
            option_id           = data.get('option_id')
            quantity            = data.get('quantity')
            order_item          = OrderItem.objects.get(order__user=request.user, order__order_status__status=self.ORDER_STATUS, product_option__id=option_id)

            order_item.price    = order_item.product_option.price * quantity
            order_item.quantity = quantity
            order_item.save()
        except JSONDecodeError:
            return JsonResponse({'MESSAGES': 'EMPTY_ARGS_ERROR'}, status=400)

        return JsonResponse({'MESSAGES': 'SUCCESS'}, status=200)

    @login_required
    def patch(self, request):
        try:
            data                   = json.loads(request.body)
            option_id              = data.get('option_id')
            quantity               = data.get('quantity')
            product_option         = ProductOption.objects.get(id=option_id)

            order_item, is_created = OrderItem.objects.get_or_create(
                product            = product_option.product,
                order              = Order.objects.get(user=request.user, order_status__status=self.ORDER_STATUS),
                product_option_id  = option_id,
                defaults           = {
                    'price'    : 0,
                    'quantity' : 0
                }
            )

            if is_created:
                order_item.quantity  = quantity
            else:
                order_item.quantity += quantity
            order_item.price         = quantity * product_option.price
            order_item.save()
        except JSONDecodeError:
            return JsonResponse({'MESSAGES': 'EMPTY_ARGS_ERROR'}, status=400)

        return JsonResponse({'MESSAGES': 'SUCCESS'}, status=200)

    @login_required
    def get(self, request):
        order_items = OrderItem.objects.filter(order__user=request.user, order__order_status__status=self.ORDER_STATUS)
        
        cart_info = [{
            "order_id"     : item_info.order_id,
            "id"           : item_info.product_id,
            "option_id"    : item_info.product_option_id,
            "name"         : item_info.product.name,
            "sub_category" : item_info.product.sub_category.sub_title,
            "product_image": item_info.product.productimage_set.first().image_url,
            "weight"       : item_info.product_option.weight,
            "price"        : int(item_info.product_option.price),
            "total_price"  : int(item_info.price),
            "quantity"     : item_info.quantity,
            "stock"        : item_info.product_option.quantity,
            "is_checked"   : True
        } for item_info in order_items]

        return JsonResponse({'selectedQty': cart_info}, status=200)
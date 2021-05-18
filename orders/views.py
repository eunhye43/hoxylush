import json
from json.decoder         import JSONDecodeError

from django.http.response import JsonResponse
from django.views         import View

from orders.models        import OrderItem
from util.utils           import login_required

class CartView(View):
    ORDER_STATUS = '장바구니'

    @login_required
    def patch(self, request):
        try:
            data                   = json.loads(request.body)
            option_id_list = data.get('option_id_list')

            result, _ = OrderItem.objects.filter(order__user=request.user, order__order_status__status=self.ORDER_STATUS, product_option_id__in=option_id_list).delete()

            if result == 0:
                return JsonResponse({'MESSAGES': 'NOT_FOUND'}, status=404)
        except JSONDecodeError:
            return JsonResponse({'MESSAGES': 'EMPTY_ARGS_ERROR'}, status=400)

        return JsonResponse({'MESSAGES': 'SUCCESS'}, status=204)
    
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
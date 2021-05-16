import json
from json.decoder         import JSONDecodeError

from django.http.response import JsonResponse
from django.views         import View

from products.models      import ProductOption
from orders.models        import OrderItem
from util.utils           import login_required


class CartView(View):

    @login_required
    def post(self, request):
        try:
            data        = json.loads(request.body)
            products    = data.get("cart_info")
            order_items = request.user.order_set.get(order_status__status='장바구니').orderitem_set.all()

            for product in products:
                order_id          = product["order_id"]
                product_id        = product["id"]
                product_option_id = product["option_id"]
                quantity          = product["quantity"]

                items             = order_items.filter(
                    product_id=product_id,
                    product_option_id=product_option_id,
                    order_id=order_id)
                
                if items.exists():
                    item           = items.first()
                    item.quantity += quantity
                    item.price     = item.product_option.price * item.quantity
                    item.save()
                else:
                    item = OrderItem.objects.create(
                        product_id=product_id,
                        product_option_id=product_option_id,
                        order_id=order_id,
                        quantity=quantity,
                        price=ProductOption.objects.get(id=product_option_id).price * quantity)
                
                product_option           = ProductOption.objects.get(id=product_option_id)
                product_option.quantity -= item.quantity
                product_option.save()

            return JsonResponse({'message': 'SUCCESS'}, status=201)
        except JSONDecodeError:
            return JsonResponse({'message': 'EMPTY_KEYS_ERROR'}, status=400)
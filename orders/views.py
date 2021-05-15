from django.http.response import JsonResponse
from django.views         import View

from orders.models        import Order, OrderItem, OrderStatus
from util.utils           import login_required


class CartView(View):

    @login_required
    def get(self, request):
        order       = Order.objects.get(user=request.user, order_status=OrderStatus.objects.get(status='장바구니'))
        order_items = OrderItem.objects.filter(order=order)

        cart_info = [{
            "id"           : i,
            "name"         : item_info.product.name,
            "sub_category" : item_info.product.sub_category.sub_title,
            "product_image": item_info.product.productimage_set.first().image_url,
            "weight"       : item_info.product_option.weight,
            "price"        : int(item_info.product_option.price),
            "total_price"  : int(item_info.price),
            "quantity"     : item_info.quantity
        } for i, item_info in enumerate(order_items)]

        return JsonResponse({'cart_info': cart_info}, status=200)

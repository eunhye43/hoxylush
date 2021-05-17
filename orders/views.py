from django.http.response import JsonResponse
from django.views         import View

from orders.models        import OrderItem, Order

from util.utils           import login_required

class CartView(View):
    @login_required
    def get(self, request):
        order_items = OrderItem.objects.filter(order=Order.objects.get(user=request.user, order_status__status='장바구니'))
        
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
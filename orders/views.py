import json
from json.decoder         import JSONDecodeError

from django.http.response import JsonResponse
from django.views         import View

from orders.models        import OrderItem
from util.utils           import login_required

class CartView(View):
    ORDER_STATUS = '장바구니'

    @login_required
    def delete(self, request):
        try:
            data                   = json.loads(request.body)
            product_option_id_list = [product_info['option_id'] for product_info in data]

            OrderItem.objects.filter(order__user=request.user, order__order_status__status=self.ORDER_STATUS, product_option_id__in=product_option_id_list).delete()
        except JSONDecodeError:
            return JsonResponse({'MESSAGES': 'EMPTY_ARGS_ERROR'}, status=400)

        return JsonResponse({'MESSAGES': 'SUCCESS'}, status=204)
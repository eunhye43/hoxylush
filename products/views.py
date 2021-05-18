import json

from django.http            import JsonResponse
from django.views           import View
from django.db.models       import Q

from products.models        import Category, Product, ProductImage, SubCategory, ProductTag, Tag

class ProductListView(View):
    def get(self, request):
        category_id       = request.GET.get('category_id')
        sub_category_id   = request.GET.get('sub_category_id')
        keyword           = request.GET.get('keyword')
        pagination        = int(request.GET.get('pagination', 0))
        limit             = int(request.GET.get('limit', 4))
        offset            = pagination * 4
        
        if category_id or sub_category_id:
            products = Product.objects.filter(
                Q(category_id = category_id) |
                Q(sub_category_id = sub_category_id))[offset:offset+limit]

        elif keyword:
            products= Product.objects.filter(name__contains = keyword)
            
        else:
            products = Product.objects.all()[offset:offset+limit]

        product_list = [{
            'id'            : product.id,
            'name'          : product.name,
            'hashtag'       : product.hashtag,
            'option' : [{ 
                'option_id'     : option.id,
                'price'         : option.price,
                'quantity'      : option.quantity,
                'weight'        : option.weight,
                } for option in product.productoption_set.all()],
            'image_url'     : product.productimage_set.first().image_url,
            'tag'    : [{'id' : tag.id, 'tag': tag.name} for tag in product.tag_set.all()]
            } for product in products]
        
        return JsonResponse({'product_info' : product_list}, status = 200)
import json

from django.http     import JsonResponse
from django.views    import View
from django.db.models       import Q
from products.models import Category, Product, ProductImage, ProductOption, ProductDescription, Ingredient, Tag, SubCategory, ProductTag

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

class ProductDetailView(View):
    def get(self, request, product_option_id):
        product_option = ProductOption.objects.get(id=product_option_id)

        result = {
            'product_id'           : product_option.product.id,
            'name'                 : product_option.product.name,
            'hashtag'              : product_option.product.hashtag,
            'hit'                  : product_option.product.hit,
            'video_url'            : product_option.product.video_url,
            'product_option_id'    : product_option.id,
            'price'                : product_option.price,
            'quantity'             : product_option.quantity,
            'weight'               : product_option.weight,
            'product_images'       : [productimage.image_url
                  for productimage in ProductImage.objects.filter(product=product_option.product)],
            'product_descriptions' : [{
                    'description1' : productdescription.description,
                    'image_url1'   : productdescription.image_url
                } for productdescription in ProductDescription.objects.filter(product=product_option.product)],
            'ingredient_detail'    : [{
                    'description2' : ingredient.description,
                    'image_url2'   : ingredient.image_url,
                    'name2'        : ingredient.name
                } for ingredient in Ingredient.objects.filter(product=product_option.product)],
            'tag'                  : [tag.name for tag in Tag.objects.filter(product=product_option.product)]
                }
        return JsonResponse({'result' : result}, status=200)
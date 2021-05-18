import json
from django.http     import JsonResponse
from django.views    import View

from products.models import Product, ProductImage, ProductOption, ProductDescription, Ingredient, Tag
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

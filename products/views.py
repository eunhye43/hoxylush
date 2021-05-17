import json
from django.http import JsonResponse
from django.views import View

from products.models import Product, ProductImage, ProductOption, ProductDescription, Ingredient
class ProductDetailView(View):
    def get(self, request, product_id):
        product = Product.objects.get(id=product_id)

        product_images = []
        productimages = ProductImage.objects.filter(product=product)
        for productimage in productimages:
            product_images.append(productimage.image_url)

        product_descriptions = []
        productdescriptions = product.productdescription_set.all()
        for productdescription in productdescriptions:
            product_descriptions.append({
                 'description1' : productdescription.description,
                 'image_url1' : productdescription.image_url
                 })

        ingredient_detail = []
        ingredients = product.ingredient_set.all()
        for ingredient in ingredients:
            ingredient_detail.append({
                        'description2' : ingredient.description,
                        'image_url2' : ingredient.image_url,
                        'name2' : ingredient.name
                     })

        result = {
            'id'        : product.id,
            'name'      : product.name,
            'hashtag'   : product.hashtag,
            'hit'       : product.hit,
            'video_url' : product.video_url,
            'price'     : product.productoption_set.first().price,
            'weight'    : product.productoption_set.first().weight,
            'quantity'  : product.productoption_set.first().quantity,
            'product_images' : product_images,
            'product_descriptions' : product_descriptions,
            'ingredient_detail' : ingredient_detail
        }
        
        
        return JsonResponse({'result' : result}, status=200)
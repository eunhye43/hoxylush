import json

from django.http import JsonResponse
from django.views import View

from product.models import Category, SubCategory, ProductDescription, ProductOption, ProductImage, Ingredient, Review, ReviewImage

class CategoryView(View):
    def get(self, request):
        categories = Category.objects.all()
        result = []
        category_list = {
            'category_list' : categories.title,
        }
        result.append(category_list)

        sub_categories = SubCategory.objects.all()
        result = []
        sub_category_list = {
            'sub_category_list' : sub_categories.title,
        }
        result.append(category_list)
        
        products = Product.object.all()
        product_list=[{
            'name_korean'       = product.name,
            'name_english'      = product.name.english,
            'hit'               = 
            'video_url'         = 
            'category'          = product.category.name
            'sub_category'      = product.sub_category.name
            'user'              = product.user.name

        }]
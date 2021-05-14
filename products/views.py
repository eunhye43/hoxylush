from django.shortcuts import render

import json

from django.http    import JsonResponse
from django.views   import View

from products.models import Product, Category, SubCategory, ProductImage, Tag, ProductTag

# 프론트가 원하는 데이터
# 메인페이지: 상품ID, 상품명, 상품 설명(해쉬태그형식),가격, 상품이미지
# 제품리스트: 이미지, 태그, 제품명, 해시태그, 중량, 가격, 재고,


class MainPageView(View):
    def get(self, request):
        products       = Product.objects.all()
        product_option = ProductOption.objects.select_related("product").all() #굳이 쓰지 마라 아직 이해부족, 현재는 불필요한 줄만 늘여놓은 꼴이다.
        product_image  = ProductImage.objects.select_related("product").all()

        mainpage_product_list = [
            {
                'product_id'            : product.id,
                'product_name_korean'   : product.name_korean,
                'price'                 : product_option.get(id=product.id).price,
                'image_url'             : product_image.get(id=product.id)).image,
            } 
            for product in products]

        return JsonResponse({'category_list' : category_list}, status = 200)

class ProductListView(View):
    def get(self, request):
        products = Product.objects.all()
        product_option = ProductOption.objects.select_related("product").all()


        subpage_product_list = [
            {
                'image_url'            : [image.image_url for image in product.image_set.all()],
                'tag'                  : a.product.tag, #태그 종류, 개수 확인, 태그 끌어오는법 확인하기!
                'product_name_korean'  : product.name_korean,
                'price'                : product_option.get(id=product.id).price,
                'quantity'             : product_option.get(id=product.id).quantity,
                'quantity'             : product_option.get(id=product.id).weight,
                # 'order_status'         : product.order_status, 아직 미생성
            } 
            for product in products]

        return JsonResponse({'product_list_data': product_list}, status=200)

class CategoryView(View):
    def get(self, request):
        categories = Category.objects.all()

        category_list = [
            {
                'category'  : category.id,
                'title'     : cateogry.title,
            } 
            for category in categories]

        return JsonResponse({'category_list' : category_list}, status = 200)

class SubCategoryView(View):
    def get(self, request):
        sub_categories    = SubCategory.objects.all()

        sub_category_list = [
            {
            'sub_category'    : sub_category.id,
            'title'           : Subcategory.title,
            } 
            for sub_category in sub_categories]

        return JsonResponse({'sub_category_list' : sub_category_list}, status = 200)
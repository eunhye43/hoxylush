from django.urls import path
from products.views import ProductDetailView

urlpatterns = [
    path('/<int:product_option_id>', ProductDetailView.as_view())
    ]

    # get 0.0.0.0:8000/products -> product list 를 가져온다는 뜻이다.
    # get 0.0.0.0:8000/products/<int:product_id> <- product_id -> product detail 
from django.urls import path
from products.views import ProductDetailView

urlpatterns = [
    path('/<int:product_option_id>', ProductDetailView.as_view()),
    path("", ProductListView.as_view()),
]
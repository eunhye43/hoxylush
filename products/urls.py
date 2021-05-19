from django.urls import path
from products.views import ProductDetailView, ProductListView

urlpatterns = [
    path('/<int:product_id>', ProductDetailView.as_view()),
    path("", ProductListView.as_view())
]
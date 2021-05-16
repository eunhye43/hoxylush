from django.urls     import path
from products.views  import ProductListView

urlpatterns = [
    path("/products-list", ProductListView.as_view()),
]
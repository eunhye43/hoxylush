from django.db          import models

from products.models    import Product, ProductOption
from users.models       import User


class Order(models.Model):
    user         = models.ForeignKey(User, on_delete=models.CASCADE)
    address      = models.CharField(max_length=500, null=True)
    order_status = models.ForeignKey("OrderStatus", on_delete=models.CASCADE)
    created_at   = models.DateTimeField(auto_now_add=True)
    updated_at   = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "orders"

class OrderItem(models.Model):
    product        = models.ForeignKey(Product, on_delete=models.CASCADE)
    product_option = models.ForeignKey(ProductOption, on_delete=models.CASCADE)
    order          = models.ForeignKey("Order", on_delete=models.CASCADE)
    price          = models.DecimalField(max_digits=10, decimal_places=2)
    quantity       = models.IntegerField()

    class Meta:
        db_table = "order_items"

class OrderStatus(models.Model):
    status = models.CharField(max_length=100)

    class Meta:
        db_table = "order_status"
from django.db        import models
from users.models     import User

class Product(models.Model):
    name              = models.CharField(max_length=100)
    hashtag           = models.CharField(max_length=100)
    hit               = models.IntegerField(default=0)
    video_url         = models.URLField(max_length=500)
    category          = models.ForeignKey("Category", on_delete=models.CASCADE)
    sub_category      = models.ForeignKey("SubCategory", on_delete=models.CASCADE)
    user              = models.ManyToManyField(User, through="Like")

    class Meta:
        db_table = "products"

class Category(models.Model):
    title             = models.CharField(max_length=100)

    class Meta:
        db_table = "categories"

class SubCategory(models.Model):
    category          = models.ForeignKey("Category", on_delete=models.CASCADE)
    sub_title         = models.CharField(max_length=100)

    class Meta:
        db_table = "sub_categories"

class ProductDescription(models.Model):
    product           = models.ForeignKey("Product", on_delete=models.CASCADE)
    description       = models.TextField()
    image_url         = models.URLField(max_length=500)

    class Meta:
        db_table = "product_descriptions"

class ProductOption(models.Model):
    product           = models.ForeignKey("Product", on_delete=models.CASCADE)
    weight            = models.CharField(max_length=100)
    price             = models.DecimalField(max_digits=10, decimal_places=2)
    quantity          = models.IntegerField()

    class Meta:
        db_table = "product_options"

class ProductImage(models.Model):
    product           = models.ForeignKey("Product", on_delete=models.CASCADE)
    image_url         = models.URLField(max_length=500)

    class Meta:
        db_table = "product_images"

class Ingredient(models.Model):
    product             = models.ForeignKey("Product", on_delete=models.CASCADE)
    name                = models.CharField(max_length=100)
    description         = models.TextField()
    image_url           = models.URLField(max_length=500)

    class Meta:
        db_table = "ingredients"

class Review(models.Model):
    user       = models.ForeignKey(User, on_delete=models.CASCADE)
    product    = models.ForeignKey(Product, on_delete=models.CASCADE, null=True)
    content    = models.CharField(max_length=1000)
    rating     = models.IntegerField(default=1)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = "reviews"

class ReviewImage(models.Model):
    review    = models.ForeignKey("Review", on_delete=models.CASCADE)
    image_url = models.URLField(max_length=500)
    class Meta:
        db_table = "review_images"

class Like(models.Model):
    user    = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey("Product", on_delete=models.CASCADE)

    class Meta:
        db_table = "likes"

class Tag(models.Model):
    name    = models.CharField(max_length=100)
    product = models.ManyToManyField("Product", through="ProductTag")

    class Meta:
        db_table = "tags"

class ProductTag(models.Model):
    product = models.ForeignKey("Product", on_delete=models.CASCADE)
    tag     = models.ForeignKey("Tag", on_delete=models.CASCADE)

    class Meta:
        db_table = "product_tags"
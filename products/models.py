from django.db import models

class Product(models.Model):
    title = models.CharField(max_length=100)
    name = models.CharField(max_length=100, default='Product Name')
    description = models.TextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    image = models.ImageField(upload_to='media/products')

    def __str__(self):
        return self.title

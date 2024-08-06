from django.db import models

# Create your models here.
class Products(models.Model):
    product_id = models.AutoField(primary_key=True)
    product_name = models.CharField(max_length=50)
    price = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'products'


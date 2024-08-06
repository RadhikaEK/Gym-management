from django.db import models

# Create your models here.

class GymPackage(models.Model):
    gp_id = models.AutoField(primary_key=True)
    gym_id = models.IntegerField()
    package = models.CharField(max_length=30)
    duration = models.CharField(max_length=30)
    fee = models.CharField(max_length=30)
    description = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'gym_package'


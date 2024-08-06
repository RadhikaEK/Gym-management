from django.db import models

# Create your models here.

class GymDetails(models.Model):
    g_id = models.AutoField(primary_key=True)
    gym_name = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    location = models.CharField(max_length=30)
    phn_number = models.CharField(max_length=20)
    email = models.CharField(max_length=30)
    branch = models.CharField(max_length=30)
    status = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'gym_details'


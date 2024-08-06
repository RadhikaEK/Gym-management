from django.db import models

# Create your models here.
class WrkoutDetails(models.Model):
    w_id = models.AutoField(primary_key=True)
    workout_name = models.CharField(max_length=30)
    video = models.CharField(max_length=100)
    details = models.CharField(max_length=100)
    gym_id = models.IntegerField()

    class Meta:
        # managed = False
        db_table = 'wrkout_details'



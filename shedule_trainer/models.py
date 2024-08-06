from django.db import models
from trainer_details.models import GymDetails

# Create your models here.
class SheduleTrainer(models.Model):
    shedule_id = models.AutoField(primary_key=True)
    # g_id = models.IntegerField()
    g=models.ForeignKey(GymDetails, to_field='g_id',on_delete=models.CASCADE)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'shedule_trainer'


from django.db import models
from user.models import User
from trainer_details.models import GymDetails

# Create your models here.
class AssTrainer(models.Model):
    ass_id = models.AutoField(primary_key=True)
    # u_id = models.IntegerField()
    u=models.ForeignKey(User, to_field='u_id', on_delete=models.CASCADE)
    # g_id = models.IntegerField()
    g=models.ForeignKey(GymDetails, to_field='g_id',on_delete=models.CASCADE)
    class Meta:
        managed = False
        db_table = 'ass_trainer'


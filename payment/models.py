from django.db import models
from user.models import User
from trainer_details.models import GymDetails
from trainer_package.models import GymPackage
# Create your models here.
class Payment(models.Model):
    p_id = models.AutoField(primary_key=True)
    # u_id = models.IntegerField()
    u = models.ForeignKey(User, to_field='u_id', on_delete=models.CASCADE)
    # g_id = models.IntegerField()
    g = models.ForeignKey(GymDetails, to_field='g_id', on_delete=models.CASCADE)
    # gp_id = models.IntegerField()
    gp = models.ForeignKey(GymPackage, to_field='gp_id', on_delete=models.CASCADE)
    amount = models.CharField(max_length=30)
    date = models.DateField()
    time = models.TimeField()

    class Meta:
        managed = False
        db_table = 'payment'

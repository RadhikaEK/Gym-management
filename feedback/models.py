from django.db import models

# Create your models here.
class Feedback(models.Model):
    f_id = models.AutoField(primary_key=True)
    feedback = models.CharField(max_length=50)
    date = models.DateField()
    time = models.TimeField()
    reply = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'feedback'




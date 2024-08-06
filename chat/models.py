from django.db import models

# Create your models here.
class Chat(models.Model):
    ch_id = models.AutoField(primary_key=True)
    chat = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'chat'



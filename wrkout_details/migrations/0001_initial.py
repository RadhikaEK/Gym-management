# Generated by Django 3.2.14 on 2022-07-16 09:53

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='WrkoutDetails',
            fields=[
                ('w_id', models.AutoField(primary_key=True, serialize=False)),
                ('workout_name', models.CharField(max_length=30)),
                ('video', models.CharField(max_length=100)),
                ('details', models.CharField(max_length=100)),
                ('gym_id', models.IntegerField()),
            ],
            options={
                'db_table': 'wrkout_details',
            },
        ),
    ]

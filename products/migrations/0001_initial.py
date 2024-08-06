# Generated by Django 3.2.14 on 2022-07-16 09:53

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Products',
            fields=[
                ('product_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_name', models.CharField(max_length=50)),
                ('price', models.IntegerField()),
            ],
            options={
                'db_table': 'products',
                'managed': False,
            },
        ),
    ]

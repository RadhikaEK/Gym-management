from rest_framework import serializers
from .models import Payment


class Aluminiserializer(serializers.ModelSerializer):
    class Meta:
        model = Payment
        fields = '__all__'
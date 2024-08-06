from rest_framework import serializers
from .models import GymDetails


class Aluminiserializer(serializers.ModelSerializer):
    class Meta:
        model = GymDetails
        fields = '__all__'
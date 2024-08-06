from rest_framework import serializers
from .models import GymPackage


class Aluminiserializer(serializers.ModelSerializer):
    class Meta:
        model = GymPackage
        fields = '__all__'
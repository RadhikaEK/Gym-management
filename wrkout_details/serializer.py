from rest_framework import serializers
from .models import WrkoutDetails


class Aluminiserializer(serializers.ModelSerializer):
    class Meta:
        model = WrkoutDetails
        fields = '__all__'
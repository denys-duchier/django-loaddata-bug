from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Person(User):
    label = models.CharField(max_length=20)

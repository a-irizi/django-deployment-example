from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class UserProfileInfo(models.Model):
    # Create a relationship (don't inherit from User)
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    # Add any aditional attributes you want
    protfolio = models.URLField(blank=True, null=True)
    picture = models.ImageField(upload_to="profile_pics", blank=True, null=True)

    def __str__(self):
        return self.user.username

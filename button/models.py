from django.db import models


class Button(models.Model):
    def __str__(self):
        return str(self.state)

    state = models.CharField(max_length=100, default='', blank=True)

from django.db import models


class Post(models.Model):
    def __str__(self):
        return self.shortTitle

    postID = models.AutoField(primary_key=True)
    shortTitle = models.CharField(max_length=40, default='')
    title = models.CharField(max_length=100, default='')
    abstract = models.CharField(max_length=500, default='')
    body = models.CharField(max_length=10000, default='')
    postTime = models.DateTimeField(auto_now_add=True)

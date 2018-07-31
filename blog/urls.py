from django.urls import path
from . import views

app_name = 'blog'
urlpatterns = [
    path('', views.index, name='index'),
    path('newpost', views.newPost, name='newPost'),
    path('submitpost', views.submitPost, name='submit'),
]

from django.urls import path
from . import views

app_name = 'button'
urlpatterns = [
    path('', views.main, name='index'),
    path('buttonSubmit', views.buttonSubmit, name='submit'),
    path('reset', views.reset, name='reset'),
]

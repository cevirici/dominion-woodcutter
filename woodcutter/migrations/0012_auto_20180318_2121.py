# -*- coding: utf-8 -*-
# Generated by Django 2.0 on 2018-03-18 13:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("woodcutter", "0011_auto_20180302_2228"),
    ]

    operations = [
        migrations.AlterField(
            model_name="gamelog",
            name="supply",
            field=models.CharField(blank=True, default="", max_length=1000),
        ),
    ]

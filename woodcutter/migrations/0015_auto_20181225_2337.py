# -*- coding: utf-8 -*-
# Generated by Django 2.0 on 2018-12-25 15:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("woodcutter", "0014_merge_20180318_2245"),
    ]

    operations = [
        migrations.AlterField(
            model_name="gamelog",
            name="log",
            field=models.CharField(blank=True, default="", max_length=20000),
        ),
    ]

# -*- coding: utf-8 -*-
# Generated by Django 2.0 on 2018-02-13 03:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("woodcutter", "0003_auto_20180212_2241"),
    ]

    operations = [
        migrations.AlterField(
            model_name="carddata",
            name="id",
            field=models.IntegerField(primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name="preddata",
            name="id",
            field=models.IntegerField(primary_key=True, serialize=False),
        ),
    ]

# Generated by Django 2.0.2 on 2018-02-15 08:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('woodcutter', '0007_exceptiondata_root_card'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='carddata',
            name='exceptions',
        ),
        migrations.AlterField(
            model_name='exceptiondata',
            name='root_card',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='exceptions', to='woodcutter.CardData', verbose_name='root Card'),
        ),
    ]

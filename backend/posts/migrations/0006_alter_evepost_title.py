# Generated by Django 5.1.2 on 2025-05-21 12:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("posts", "0005_alter_evepost_title"),
    ]

    operations = [
        migrations.AlterField(
            model_name="evepost",
            name="title",
            field=models.CharField(max_length=250, unique=True),
        ),
    ]

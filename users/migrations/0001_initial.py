from django.db import migrations, models

class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('account', models.CharField(max_length=100, unique=True)),
                ('password', models.CharField(max_length=300)),
                ('nickname', models.CharField(max_length=100, null=True)),
                ('email', models.EmailField(max_length=100, unique=True)),
                ('address', models.CharField(max_length=500, null=True)),
                ('phone_number', models.CharField(max_length=50, unique=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
            options={
                'db_table': 'users',
            },
        ),
    ]

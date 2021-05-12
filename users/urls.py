from django.urls import path
from users.views import SignUpViews

urlpatterns = [
    path('/signup', SignUpViews.as_view())
]

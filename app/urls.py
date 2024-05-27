# myapp/urls.py

from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('about/', views.about, name='about'),
    path('gallery/', views.gallery, name='gallery'),
    path('alumni/', views.alumni, name='alumni'),
    path('contact/', views.contact, name='contact'),
     path('login/', views.login_view, name='login'),
     path('logout/', views.logout_view, name='logout'),
     path('signup/', views.signup_view, name='signup'),
     path('profile/', views.profile_view, name='profile'),
 path('events/', views.events, name='events'),
    path('blog/<int:pk>/', views.blog_detail, name='blog_detail'),
    path('blog/<int:pk>/comment/', views.add_comment, name='add_comment'),
    # Add other URL patterns as needed
]

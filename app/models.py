from django.db import models
from django.contrib.auth.models import User

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    admission_no = models.CharField(max_length=100, unique=True)
    full_name = models.CharField(max_length=255)

    def __str__(self):
        return self.user.username
# models.py
# models.py

from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone  # Import this to use as a default value

class BlogPost(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    created_at = models.DateTimeField(null=True)

    def __str__(self):
        return self.title
class Comment(models.Model):
    blog_post = models.ForeignKey(BlogPost, related_name='comments', on_delete=models.CASCADE)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    content = models.TextField(default='')  # Provide a default value here
    created_at = models.DateTimeField(default=timezone.now)  # Provide a default value here

    def __str__(self):
        return f'Comment by {self.author} on {self.blog_post}'

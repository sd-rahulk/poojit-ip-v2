# myapp/views.py

from django.shortcuts import render
from torch import FloatStorage


def home(request):
    authenticated = request.user.is_authenticated
    return render(request, 'app/home.html', {'authenticated': authenticated})

def about(request):
    return render(request, 'app/about.html')

def gallery(request):
    return render(request, 'app/gallery.html')

def alumni(request):
    users = User.objects.all()
    return render(request, 'app/Alumini.html', {'users': users})

def contact(request):
    return render(request, 'app/contact.html')

# Add other views as needed
# views.py

import json
from django.http import JsonResponse
from django.contrib.auth import authenticate, login

def login_view(request):
    if request.method == 'POST':
        # Parse JSON data from request body
        data = json.loads(request.body.decode('utf-8'))
        username = data.get('username')
        password = data.get('password')

        # Debugging: Print the received username and password to the console
        print("Received username:", username)
        print("Received password:", password)

        # Authenticate the user
        user = authenticate(request, username=username, password=password)

        # Debugging: Print the user object to the console
        print("Authenticated user:", user)

        if user is not None:
            # Log the user in
            login(request, user)
            
            return JsonResponse({'success': True})
        else:
            return JsonResponse({'success': False, 'error': 'Invalid credentials'})

    return JsonResponse({'success': False, 'error': 'Invalid request method'})

from django.contrib.auth import logout
from django.shortcuts import redirect

def logout_view(request):
    logout(request)
    return redirect('home')  # Redirect to the home page after logout
from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
import json

@csrf_exempt
def signup_view(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body)
            fullname = data.get('fullname')
            email = data.get('email')
            password = data.get('password')

            if not fullname or not email or not password:
                return JsonResponse({'success': False, 'error': 'All fields are required.'})

            # Use email as the username
            username = email
            if User.objects.filter(username=username).exists():
                return JsonResponse({'success': False, 'error': 'A user with that email already exists.'})

            user = User.objects.create_user(username=username, email=email, password=password)
            user.save()

            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)

            # Optionally, you can add additional user profile fields here

            return JsonResponse({'success': True})

        except Exception as e:
            return JsonResponse({'success': False, 'error': str(e)})

    return JsonResponse({'success': False, 'error': 'Invalid request method'})
# views.py

# views.py

from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Profile

@login_required
def profile_view(request):
    user = request.user
    admission_no = request.GET.get('admission_no')
    # Pass the profile data to the template for rendering
    return render(request, 'app/profile.html', {'user': user, 'admission_no': admission_no})
from django.shortcuts import render, get_object_or_404, redirect
from .models import BlogPost, Comment
from .forms import CommentForm

def events(request):
    # Assuming you have a queryset named `blog_posts` with all blog posts
    blog_posts = BlogPost.objects.all()
    return render(request, 'app/Events.html', {'blog_posts': blog_posts})
from django.shortcuts import render, get_object_or_404
from .models import BlogPost, Comment

def blog_detail(request, pk):
    blog_post = get_object_or_404(BlogPost, pk=pk)
    return render(request, 'app/blog_detail.html', {'blog_post': blog_post})

def add_comment(request, pk):
    blog_post = get_object_or_404(BlogPost, pk=pk)
    if request.method == 'POST':
        content = request.POST.get('text')  # Change 'content' to 'text'
        author = request.user
        if content:  # Ensure content is not empty
            Comment.objects.create(blog_post=blog_post, author=author, content=content)
        # Redirect to the blog post detail page after adding the comment
        return redirect('blog_detail', pk=pk)

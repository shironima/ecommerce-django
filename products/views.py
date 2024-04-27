import locale
from django.shortcuts import render, get_object_or_404
from .models import Product

def product_list(request):
    products = Product.objects.all()
    return render(request, 'products/product_list.html', {'products': products})

def product_detail(request, product_id):
    locale.setlocale(locale.LC_ALL, 'id_ID.UTF-8')
    product = get_object_or_404(Product, pk=product_id)
    return render(request, 'products/product_detail.html', {'product': product})

def index(request):
    products = Product.objects.all()[:3]  # Mengambil ... item pertama dari product list
    return render(request, 'index.html', {'products': products})
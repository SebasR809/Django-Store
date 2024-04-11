from django.shortcuts import render, redirect
from django.db.models import Q
from django.contrib.auth import authenticate, login, logout
from django.core.exceptions import ObjectDoesNotExist
import hashlib
#models
from .models import Usuario, Categoria, Marca, tipodocumento, Producto, detallesProd

from django.shortcuts import get_object_or_404

def home(request):
    return render(request,"index.html")


#Login
def login(request):
    user = request.POST.get('txtCorreo')
    password = hashlib.md5(request.POST.get('txtPass').encode()).hexdigest()

    per =  Usuario.objects.filter(Q(CorreoUser=user) & Q(Pass=password)).get()

    if per is not None:
        request.session['idUser'] = per.idUser
        return redirect(request.META.get('HTTP_REFERER', 'index'))
    else:
        return redirect(request.META.get('HTTP_REFERER', 'index'))
    
def logoutT(request):
    logout(request)
    return redirect('/')

# Gestión Admin
# Usuarios
def userAdmin(request):
    users = Usuario.objects.all().order_by('-idUser')
    tipDoc = tipodocumento.objects.all()
    return render(request,'usuario/index.html', {'users': users, 'doc' : tipDoc})

def addUser(request):
    nom = request.POST['txtNom']
    apel = request.POST['txtApel']
    tipDoc = request.POST['slcTip']
    doc = request.POST['txtDoc']
    mail = request.POST['txtMail']
    contra = request.POST['txtPass']
    dir = request.POST['txtdir']

    tipDoc = tipodocumento.objects.get(pk=tipDoc)

    User = Usuario.objects.create(
        nomUser=nom,
        apelUser=apel,
        idTipDoc=tipDoc,
        numDocUser=doc,
        CorreoUser=mail,
        Pass= hashlib.md5(contra.encode()).hexdigest(),
        DirUser=dir,
        estado = 1,
        rol = 2
    )

    return redirect(request.META.get('HTTP_REFERER', 'index'))

def deleteUser(request, idUser):
    User = Usuario.objects.get(idUser=idUser)
    User.delete()

    return redirect('/usuarios')

def editUser(request, idUser):
    User = Usuario.objects.get(idUser=idUser)
    tip = tipodocumento.objects.all()
    return render(request,'usuario/edit.html', {'user': User, 'tip' : tip})

def editarUser(request):
    idUser = request.POST['txtid']
    nom = request.POST['txtNom']
    apel = request.POST['txtApel']
    tipDoc = request.POST['slcTip']
    doc = request.POST['txtDoc']
    mail = request.POST['txtMail']
    contra = request.POST['txtPass']
    dir = request.POST['txtdir']
    est = request.POST['estado']

    tipDoc = tipodocumento.objects.get(pk=tipDoc)
    
    User = Usuario.objects.get(idUser=idUser)
    User.nomUser = nom
    User.apelUser = apel
    User.idTipDoc = tipDoc
    User.numDocUser = doc
    User.CorreoUser = mail
    User.Pass = hashlib.md5(contra.encode()).hexdigest()
    User.DirUser = dir
    User.estado = est
    User.save()

    return redirect('/usuarios')

# Categorias
def catAdmin(request):
    categories = Categoria.objects.all()
    return render(request,'categoria/index.html', {'categories': categories})

def addCat(request):
    nom = request.POST['txtNom']
    est = request.POST['txtEst']

    Categorie = Categoria.objects.create(
        NomCat = nom,
        estado = est
    )

    return redirect('/categorias')

def deleteCat(request, idCategoria):
    Categorie = Categoria.objects.get(idCategoria=idCategoria)
    Categorie.delete()

    return redirect('/categorias')

def editCat(request, idCategoria):
    Categorie = Categoria.objects.get(idCategoria=idCategoria)
    return render(request,'categoria/edit.html', {'categorie': Categorie})

def editarCat(request):
    id = request.POST['txtid']
    nom = request.POST['txtNom']
    est = request.POST['txtEst']

    Categorie = Categoria.objects.get(idCategoria=id)
    Categorie.NomCat = nom
    Categorie.estado = est
    Categorie.save()

    return redirect('/categorias')

# Marcas
def marAdmin(request):
    brand = Marca.objects.all()
    return render(request,'marca/index.html', {'brands': brand})

def addMar(request):
    nom = request.POST['txtNom']
    est = request.POST['txtEst']

    brand = Marca.objects.create(
        nomMarca = nom,
        estado = est
    )

    return redirect('/marcas')

def deleteMar(request, idMarca):
    brand = Marca.objects.get(idMarca=idMarca)
    brand.delete()

    return redirect('/marcas')

def editMar(request, idMarca):
    brand = Marca.objects.get(idMarca=idMarca)
    return render(request,'marca/edit.html', {'brand': brand})

def editarMar(request):
    id = request.POST['txtid']
    nom = request.POST['txtNom']
    est = request.POST['txtEst']

    brand = Marca.objects.get(idMarca=id)
    brand.nomMarca = nom
    brand.estado = est
    brand.save()

    return redirect('/marcas')

# Productos
# Administracion de productos
def prodAdmin(request):
    prod = Producto.objects.all().order_by('nomProd')
    marca = Marca.objects.filter(estado=1)
    cat = Categoria.objects.filter(estado=1)
    return render(request,'producto/producto.html', {'prod' : prod,'brand' : marca, 'categorie' : cat})

def addProd(request):
    
    nom = request.POST.get('txtNom')
    desc = request.POST.get('textareaDesc')
    mar = request.POST.get('slcMar')
    cat = request.POST.get('slcCat')
    img = request.FILES.get('imgProd')
    precio = request.POST.get('txtPrecio')
    cant = request.POST.get('txtStock')

    #Instancias de los otros modelos para guardar la foreign key 
    mar = Marca.objects.get(pk=mar)
    cat = Categoria.objects.get(pk=cat)

    Prod = Producto.objects.create(
        nomProd=nom,
        descProd=desc,
        idMarca=mar,
        idCategoria=cat,
        imgProd= img,
        PrecioProd=precio,
        StockProd=cant,
        estado = 0
    )

    return redirect('/productos')

def deleteProd(request, idProduct):
    Product = Producto.objects.get(idProduct=idProduct)
    Product.delete(using='default', keep_parents=False)

    return redirect('/productos')

def editProd(request, idProduct):
    prod = Producto.objects.get(idProduct=idProduct)
    marca = Marca.objects.all()
    cat = Categoria.objects.all()
    detail = detallesProd.objects.filter(idProduct=idProduct).order_by('-idDetalleProd').first()
    return render(request,'producto/edit.html', {'product': prod,'brand' : marca, 'categorie' : cat, 'detal' : detail})

def editarProd(request):
    id = request.POST.get('txtid')
    nom = request.POST.get('txtNom')
    desc = request.POST.get('textareaDesc')
    mar = request.POST.get('slcMar')
    cat = request.POST.get('slcCat')
    img =  request.POST.get('imgProd')
    precio = request.POST.get('txtPrecio')
    cant = request.POST.get('txtStock')

    #Instancias de los otros modelos para guardar la foreign key 
    mar = Marca.objects.get(pk=mar)
    cat = Categoria.objects.get(pk=cat)

    prod = Producto.objects.get(idProduct=id)
    prod.nomProd = nom
    prod.descProd = desc
    prod.idMarca = mar
    prod.idCategoria = cat
    prod.imgProd = img
    prod.PrecioProd = precio
    prod.StockProd = cant
    prod.save()

    return redirect('/productos') 

def publicProd(request, idProduct):
    prod = Producto.objects.get(idProduct=idProduct)
    prod.estado = 0
    prod.save()

    return redirect('/productos')

def notpublicProd(request, idProduct):
    prod = Producto.objects.get(idProduct=idProduct)
    prod.estado = 1
    prod.save()

    return redirect('/productos')

# Detalles Productos
def detProdAdmin(request, idProduct):
    prod = Producto.objects.get(idProduct=idProduct)
    detail = detallesProd.objects.filter(idProduct=idProduct).order_by('-idDetalleProd').first()
    return render(request,'producto/detalles.html', {'p':prod, 'd':detail})

def addDetailProd(request):

    campos = {
        'prod': request.POST.get('txtid'),
        'serial': request.POST.get('txtserial'),
        'col': request.POST.get('txtcol'),
        'peso': request.POST.get('txtpeso'),
        'dim': request.POST.get('txtDim'),
        'img': request.FILES.get('imgExtra')
    }

    # Asignar valores predeterminados si los campos están vacíos
    campos['col'] = campos['col'] or 'No aplica'
    campos['peso'] = campos['peso'] or 'No aplica'
    campos['dim'] = campos['dim'] or 'No aplica'

    # Obtener la instancia del producto
    producto = get_object_or_404(Producto, pk=campos['prod'])

    # Crear el detalle del producto
    detalle = detallesProd.objects.create(
        color=campos['col'],
        peso=campos['peso'],
        dimensiones=campos['dim'],
        imgExtra=campos['img'],
        serial=campos['serial'],
        idProduct=producto
    )

    return redirect('/productos')
    
#Tienda Virtual
def shopAdmin(request):
    prod = Producto.objects.filter(estado=1).order_by('nomProd')

    iduser = request.session.get('idUser')

    print(iduser)
    
    return render(request,'tienda/index.html', {'prod' : prod})

def prodCompra(request, idProduct):
    prod = Producto.objects.get(idProduct=idProduct)
    detail = detallesProd.objects.filter(idProduct=idProduct).order_by('-idDetalleProd').first()
    return render(request,'tienda/producto.html', {'p':prod, 'd':detail})
from django.shortcuts import render, redirect

#models
from .models import Usuario, Categoria, Marca, tipodocumento

def home(request):
    return render(request,"index.html")

# Gestión Admin
# Usuarios
def userAdmin(request):
    users = Usuario.objects.all()
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

    User = Usuario.objects.create(
        nomUser=nom,
        apelUser=apel,
        idTipDoc=tipDoc,
        numDocUser=doc,
        CorreoUser=mail,
        Pass=contra,
        DirUser=dir
    )

    return redirect('/usuarios')

def deleteUser(request, idUser):
    User = Usuario.objects.get(idUser=idUser)
    User.delete()

    return redirect('/usuarios')

def editUser(request, idUser):
    User = Usuario.objects.get(idUser=idUser)
    return render(request,'usuario/edit.html', {'user': User})

def editarUser(request):
    idUser = request.POST['txtid']
    nom = request.POST['txtNom']
    apel = request.POST['txtApel']
    tipDoc = request.POST['slcTip']
    doc = request.POST['txtDoc']
    mail = request.POST['txtMail']
    contra = request.POST['txtPass']
    dir = request.POST['txtdir']
    
    User = Usuario.objects.get(idUser=idUser)
    User.nomUser = nom
    User.apelUser = apel
    User.idTipDoc = tipDoc
    User.numDocUser = doc
    User.CorreoUser = mail
    User.Pass = contra
    User.DirUser = dir
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





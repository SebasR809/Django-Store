from django.urls import path
from . import views

from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('', views.home, name="index"),
    #Acciones Usuarios
    path('usuarios', views.userAdmin, name="users"),
    path('AddUser', views.addUser),
    path('deleteUser/<idUser>', views.deleteUser),
    path('editUser/<idUser>', views.editUser),
    path('editarUser', views.editarUser),
    #Acciones Categorias
    path('categorias', views.catAdmin, name="categorias"),
    path('addCat', views.addCat),
    path('deleteCat/<idCategoria>', views.deleteCat),
    path('editCat/<idCategoria>', views.editCat),
    path('editarCat', views.editarCat),
    #Acciones Marca
    path('marcas', views.marAdmin, name="marcas"),
    path('addMar', views.addMar),
    path('deleteMar/<idMarca>', views.deleteMar),
    path('editMar/<idMarca>', views.editMar),
    path('editarMar', views.editarMar),
    #Productos
    #Gestion Productos
    path('productos', views.prodAdmin, name='productos'),
    path('addProd', views.addProd),
    path('deleteProd/<idProduct>', views.deleteProd),
    path('editProd/<idProduct>', views.editProd),
    path('publicProd/<idProduct>', views.publicProd),
    path('notpublicProd/<idProduct>', views.notpublicProd),
    path('editarProd', views.editarProd),
    #Gestion Detalles
    path('detProdAdmin/<idProduct>', views.detProdAdmin, name='detallesProduct'),
    path('addDetailProd', views.addDetailProd),
    #Tienda Virtual
    path('tienda', views.shopAdmin, name='tienda'),
    path('detalle/<idProduct>', views.prodCompra),
    path('login', views.login),
    path('logout', views.logoutT)
    

] + static(settings.MEDIA_URL, document_root= settings.MEDIA_ROOT)
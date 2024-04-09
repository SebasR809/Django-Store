from typing import Any
from django.db import models

# # Create your models here.
class tipodocumento(models.Model):
    idTipDoc = models.AutoField(primary_key=True)
    nomTipDoc = models.CharField(max_length=100)
    codTipDoc = models.CharField(max_length=20)
    estado = models.IntegerField(verbose_name='Estado')

    class Meta:
        managed = False
        db_table = 'tipodocumento'

    def __str__(self):
        text = "{0}"
        return text.format(self.idTipDoc, self.codTipDoc)

class Usuario(models.Model):
    idUser = models.AutoField(primary_key=True)
    nomUser = models.CharField(max_length=100, verbose_name='Nombre')
    apelUser = models.CharField(max_length=100, verbose_name='Apellido')
    numDocUser = models.CharField(max_length=20, verbose_name='NumDocumento')
    CorreoUser = models.CharField(max_length=150, verbose_name='Correo')
    Pass = models.CharField(max_length=40) 
    DirUser = models.CharField(max_length=150, verbose_name='Direccion')
    idTipDoc = models.ForeignKey(tipodocumento, on_delete=models.CASCADE, db_column='idTipDoc')
    estado = models.IntegerField(verbose_name='Estado')

    class Meta:
        managed = False
        db_table = 'users'


class Categoria(models.Model):
    idCategoria = models.AutoField(primary_key=True)
    NomCat = models.CharField(max_length=100, verbose_name='Categoria')
    estado = models.IntegerField(verbose_name='Estado')

    class Meta:
        managed = False
        db_table = 'categoria'

    def __str__(self):
        text = "{0}"
        return text.format(self.NomCat)

class Marca(models.Model):
    idMarca = models.AutoField(primary_key=True)
    nomMarca = models.CharField(max_length=100, verbose_name='Marca')
    estado = models.IntegerField(verbose_name='Estado')

    class Meta:
        managed = False
        db_table = 'marca'

    def __str__(self):
        text = "{0}"
        return text.format(self.nomMarca)
    
class Producto(models.Model):
    idProduct = models.AutoField(primary_key=True)
    nomProd = models.CharField(max_length=100) 
    descProd = models.CharField(max_length=255)
    idMarca = models.ForeignKey(Marca, on_delete=models.CASCADE, db_column='idMarca')
    idCategoria = models.ForeignKey(Categoria, on_delete=models.CASCADE, db_column='idCategoria', blank=True, null=True)
    imgProd = models.ImageField(upload_to='imagenesProd/', null=True)
    PrecioProd = models.FloatField()
    StockProd = models.IntegerField()
    estado = models.IntegerField(verbose_name='Estado')

    class Meta:
        managed = True
        db_table = 'products'
    
    
    def delete(self, using: None, keep_parents:False):
        self.imgProd.storage.delete(self.imgProd.name)
        super().delete()
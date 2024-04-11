from .models import Usuario

def add_logged_user(request):
    logged_user = None
    if 'idUser' in request.session:
        try:
            logged_user = Usuario.objects.get(idUser=request.session['idUser'])
        except Usuario.DoesNotExist:
            pass
    return {'log': logged_user}
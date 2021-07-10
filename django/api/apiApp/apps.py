from django.apps import AppConfig
from desarrollo.conexionBase import Conexion
from desarrollo.predecirSentimiento import Sentimiento

class ApiappConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apiApp'

class CargarCosas(AppConfig):
    conexion = Conexion('localhost', 'root', '', 'tesis')
    modelo = Sentimiento('C:\\Users\\vazqu\Desktop\\10mo\\Tesis\\Desarrollo\\django\\api\\desarrollo\\modeloSentimiento\\MODELO_AMAZON.h5',
                         'C:\\Users\\vazqu\\Desktop\\10mo\\Tesis\\Desarrollo\\django\\api\\desarrollo\\modeloSentimiento\\tokenizerRNN.pickle')

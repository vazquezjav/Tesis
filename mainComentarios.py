# -*- coding: utf-8 -*-
"""
Created on Tue Apr 27 15:02:50 2021

@author: vazqu
"""
import obtenerComentarios
import pandas as pd
import numpy as np

import loginComentarios

def obtenerCom():
    #4561570650533328 noticia marinos
    #4562003263823400
    #166475175361071
    
    #4556360867720973  noticioa comercio mas 2.6k 
    id_publi='4712305442149214'
    com=obtenerComentarios.Comentarios(id_publi)
    com.obtener_comentarios()
    
    comentarios=com.obtener_comentarios_paginas()
    
    respuestas_comentarios=com.guardar_respuesta_comentarios2()
    
    print("Total Comentarios = ",(len(comentarios)+len(respuestas_comentarios)+1),"\n")
    #print(respuestas_comentarios)
    
    todo=comentarios+respuestas_comentarios
    todo=np.asarray(todo)
    df = pd.DataFrame(todo)
    
    df.to_csv('datos.csv')

def loginComentario(email,pas, id_face):
    
    log=loginComentarios.loginComentarios(id_face, email, pas)
    log.obtener_comentarios()
    comentarios=log.obtener_comentarios_paginas()
    
    respuestas_comentarios=log.guardar_respuesta_comentarios2()
    
    print("Total Comentarios = ",(len(comentarios)+len(respuestas_comentarios)+1),"\n")
    todo=comentarios+respuestas_comentarios
    todo=np.asarray(todo)
    df = pd.DataFrame(todo)
    df.to_csv('datos2.csv')
    
if __name__=="__main__":
    #4561570650533328 noticia marinos
    #4562003263823400
    #166475175361071
    
    #4556360867720973  noticioa comercio mas 2.6k 
    #4712305442149214 noticia champions 9.6k
    
    id_publi='4712305442149214'
    email='jav2022123@gmail.com'
    pas='marytigrearias99'
    loginComentario(email, pas, id_publi);
    #obtenerCom()
    
    
    
#for i in comentarios: print(i)
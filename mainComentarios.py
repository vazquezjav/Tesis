# -*- coding: utf-8 -*-
"""
Created on Tue Apr 27 15:02:50 2021

@author: vazqu
"""
import obtenerComentarios
import pandas as pd
import numpy as np

import loginComentarios
import conexionBase
import LimpiezaPLN
import LDA
import predecirSentimiento
from predecirSentimiento import Sentimiento
#from imp import reload
import warnings
warnings.filterwarnings('ignore')

def guardarBase(sql,datos, tipo):
      #### guardar publicacion
    
    if tipo ==0:
        cursor=con.guardar(sql, datos, tipo)
        return cursor.lastrowid
    if tipo ==1:
        cursor=con.guardar(sql, datos, tipo)
    if tipo ==2:
        return con.guardar(sql, 0, tipo)
    if tipo==3:
        return con.guardar(sql, datos, tipo)
        
        
def loginComentario(email,pas, url, id_usuario):
    
    log=loginComentarios.loginComentarios(url, email, pas)
    nombre_publicacion, reacciones, path=log.obtener_comentarios()
    com_dic=log.obtener_comentarios_paginas()
    
    total, res,id_face=log.guardar_respuesta_comentarios()
    
    
    val=[]
    comentario_respuestas=[]
  
    url_publicacion='https://www.facebook.com/photo?fbid='+id_face
    datos=( id_face, nombre_publicacion, url_publicacion,reacciones[0],reacciones[1],reacciones[2],reacciones[3],
           reacciones[4],reacciones[5],reacciones[6],id_usuario)
    
    id_publicacion=guardarBase("INSERT INTO publicacion (id_facebook,nombre_publicacion,url_publicacion,alegra,asombra,encanta,entristese,importa,gusta,enoja,id_usuario) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", datos, 0)
    
    for key in com_dic:
        if len(com_dic[key])>2:
            
            dato=( com_dic[key][0],key,com_dic[key][1],id_publicacion)
            id_com=guardarBase("INSERT INTO comentarios (nombre_usuario,detalle_comentario, perfil_usuario_comentario, id_publicacion) VALUES (%s,%s,%s,%s)",dato,0)
            
            if len(com_dic[key][2])>=1:
                for i in com_dic[key][2]:
                    dato_respuesta=( i[0],i[1],i[2],id_com)
                    comentario_respuestas.append(dato_respuesta)
                           
            else:
                for i in com_dic[key][2]:
                    dato_respuesta=( i[0],i[1],i[2],id_com)
                    cursor=guardarBase("INSERT INTO respuesta_comentarios (nombre_usuario,detalle_respuesta, perfil_usuario_respuesta, id_comentario) VALUES (%s,%s,%s,%s)", dato_respuesta,0)

        else:
            dato=(com_dic[key][0],key,com_dic[key][1],id_publicacion)
            val.append(dato)
    cursor=guardarBase("INSERT INTO respuesta_comentarios (nombre_usuario,detalle_respuesta, perfil_usuario_respuesta, id_comentario) VALUES (%s,%s,%s,%s)", comentario_respuestas,1)
    cursor=guardarBase("INSERT INTO comentarios (nombre_usuario,detalle_comentario, perfil_usuario_comentario, id_publicacion) VALUES (%s,%s,%s,%s)", val,1)
    return id_publicacion

def lda(id_publicacion, num_topics):
   
    com=guardarBase(('SELECT id_comentario, detalle_comentario from comentarios where id_publicacion='+str(id_publicacion)), 0, 2)
    res=guardarBase(('SELECT r.id_respuesta_comentarios, r.detalle_respuesta from comentarios c, respuesta_comentarios r where c.id_publicacion='+str(id_publicacion)+' and c.id_comentario= r.id_comentario'), 0, 2)
    comentarios=[]
    
    id_comentarios, id_respuestas=[],[]
    cont_comentarios, cont_respuestas=0,0
    for x in com.fetchall():
        comentarios.append(x[1])
        id_comentarios.append(x[0])
        cont_comentarios+=1
    for i in res.fetchall():
        comentarios.append(i[1])
        id_respuestas.append(i[0])
        cont_respuestas +=1
    
    #### LIMPIEZA COMENTARIOS -PLN
    lim=LimpiezaPLN.Procesamiento(comentarios)
    token, stem,leman=lim.limpieza()
    
    #### LDA
    print(leman)
    print('\n\n\n ******************* ************')
    print(comentarios)
    lda=LDA.ModeloLDA(leman, comentarios)
    path_topics, pathpyldavis, topicos_comentarios = lda.modelo(num_topics,id_publicacion)
    data=(path_topics, pathpyldavis, id_publicacion)
    guardarBase("UPDATE publicacion SET path_ldatopics =%s,path_pyldavis =%s WHERE id_publicacion= %s", data, 3)
    
    print(' ---- TAM = ', len(comentarios)," || ", len(topicos_comentarios))
    
    for i in range(len(comentarios)):
        print(comentarios[i] ," || ", topicos_comentarios[i])
    
    
    return leman, comentarios,[cont_comentarios,cont_respuestas],id_comentarios, id_respuestas, topicos_comentarios

def actualizarTopicosBase(topicos_comentarios, id_comentarios, id_respuestas, contadores_comentarios, id_publicacion):
    aux=0
    for i in range(contadores_comentarios[0]):
        data=(topicos_comentarios[i], id_comentarios[aux])
        guardarBase("UPDATE comentarios SET num_topico = %s WHERE id_comentario = %s", data, 3)
        aux+=1
    
    aux=0
    for j in range(contadores_comentarios[0], len(topicos_comentarios)):
        data=(topicos_comentarios[j],id_respuestas[aux])
        #print(" ",sentimientos[j]," | ",id_respuestas[aux] )
        guardarBase("UPDATE respuesta_comentarios SET num_topico = %s WHERE id_respuesta_comentarios = %s", data, 3)
        aux+=1
    data=(len(topicos_comentarios), id_publicacion)
    guardarBase("UPDATE publicacion SET num_comentarios = %s WHERE id_publicacion = %s", data, 3)
        
    
    
def predecirSentimiento(lemantizado, comentarios):
    
    leman=[" ".join(i) for i in lemantizado]
    #print(leman)
    sentimientos=[]

    lim=LimpiezaPLN.Procesamiento(comentarios)

    
    for text in leman:
        if text is '':
            sen='Vacio'
        else:
            text=lim.remover_caracteres(text)
            sen=predecir.predecirSentimiento(text)
            print('Text:  ',text,"  | ",sen,"\n")
        
        sentimientos.append(sen)
    
    return sentimientos
    
def actualizarSentimientoBase(sentimientos, id_comentarios, id_respuestas, contadores_comentarios):
    print("\n ACTUALIZAR BASEEEE \n")
    sql = "UPDATE comentarios SET sentimiento = %s WHERE id_comentario = %s"
    #data=[(3,2),(3,5)] actualizar varios datos
    
    aux=0
    for i in range(contadores_comentarios[0]):
        #print(" | ", sentimientos[i])
        data=(sentimientos[i],id_comentarios[aux])
        guardarBase("UPDATE comentarios SET sentimiento = %s WHERE id_comentario = %s", data, 3)
        aux+=1
    
    aux=0
    for j in range(contadores_comentarios[0], len(sentimientos)):
        data=(sentimientos[j],id_respuestas[aux])
        #print(" ",sentimientos[j]," | ",id_respuestas[aux] )
        guardarBase("UPDATE respuesta_comentarios SET sentimiento = %s WHERE id_respuesta_comentarios = %s", data, 3)
        aux+=1
    #update=guardarBase(sql, data, 3)
    
    
def loginComentario2(email,pas, url, id_usuario):
    
    log=loginComentarios.loginComentarios(url, email, pas)
    nombre_publicacion, reacciones, path=log.obtener_comentarios()
    com_dic=log.obtener_comentarios_paginas()
    
    total, res,id_face=log.guardar_respuesta_comentarios()
    
if __name__=="__main__":

    
    url='https://www.facebook.com/photo/?fbid=361271088693954&set=a.315790693241994'
    email='jav2022123@gmail.com'
    pas='marytigrearias99'
    id_usuario=10
    
    con=conexionBase.Conexion('localhost','root','','tesis') # conexion con la base 
    predecir = Sentimiento('modeloSentimiento/MODELO_AMAZON.h5','modeloSentimiento/tokenizerRNN.pickle') # cargar archivos necesarios del modelo RNN
    
    
   
    publicacion=loginComentario(email, pas, url,id_usuario) # obtener comentarios de la apgina 
    
    id_publicacion=94 #dentro de la base
    num_topics=3
    #lemantizado, comentarios, contadores_comentarios, id_comentarios, id_respuestas, topicos_comentarios=lda(id_publicacion, num_topics)    # obtener topicos LDA 
    
    
    #actualizarTopicosBase(topicos_comentarios, id_comentarios, id_respuestas, contadores_comentarios,id_publicacion)
    
    #sentimientos= predecirSentimiento(lemantizado, comentarios)     # obtener sentimientos de los comentarios lemantizado
    
    #
    #actualizarSentimientoBase(sentimientos, id_comentarios, id_respuestas, contadores_comentarios)
    
    
    
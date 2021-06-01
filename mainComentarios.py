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
#from imp import reload
import warnings
warnings.filterwarnings('ignore')

def guardarBase(sql,datos, tipo):
      #### guardar publicacion
    con=conexionBase.Conexion('localhost','root','','tesis')
    if tipo ==0:
        cursor=con.guardar(sql, datos, tipo)
        return cursor.lastrowid
    if tipo ==1:
        cursor=con.guardar(sql, datos, tipo)
    if tipo ==2:
        return con.guardar(sql, 0, tipo)
        
        
def loginComentario(email,pas, id_face):
    
    log=loginComentarios.loginComentarios(id_face, email, pas)
    nombre_publicacion, reacciones=log.obtener_comentarios()
    com_dic=log.obtener_comentarios_paginas()
    
    total, res=log.guardar_respuesta_comentarios()
    
    val=[]
    comentario_respuestas=[]
    con=conexionBase.Conexion('localhost','root','','tesis')
    id_empresa=1000
    url_publicacion='https://www.facebook.com/photo?fbid='+id_face
    datos=( id_face, nombre_publicacion, url_publicacion,reacciones[0],reacciones[1],reacciones[2],reacciones[3],
           reacciones[4],reacciones[5],reacciones[6],id_empresa)
    
    id_publicacion=guardarBase("INSERT INTO publicacion (id_facebook,nombre_publicacion,url_publicacion,alegra,asombra,encanta,entristese,importa,gusta,enoja,id_empresa) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", datos, 0)
    
    
    print("Total ", total)

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
   
    com=guardarBase(('SELECT detalle_comentario from comentarios where id_publicacion='+str(id_publicacion)), 0, 2)
    res=guardarBase(('SELECT r.detalle_respuesta from comentarios c, respuesta_comentarios r where c.id_publicacion='+str(id_publicacion)+' and c.id_comentario= r.id_comentario'), 0, 2)
    comentarios=[]
    texto=''
    for x in com.fetchall():
        comentarios.append(x[0])
    for i in res.fetchall():
        comentarios.append(i[0])
    #comentarios.append(texto)    
    
    #print(comentarios)
    #### LIMPIEZA COMENTARIOS
    lim=LimpiezaPLN.Procesamiento(comentarios)
    token, stem,leman=lim.limpieza()
    print(leman)
    
    #### LDA
    lda=LDA.ModeloLDA(leman, comentarios)
    lda.modelo(num_topics,id_publicacion)
    
    
if __name__=="__main__":
    #4561570650533328 noticia marinos
    #4562003263823400
    #166475175361071
    
    #4556360867720973  noticioa comercio mas 2.6k 
    #4712305442149214 noticia champions 9.6k
    
    #4092933887435474   comprobar respuestas comentarios
    
    #1809622235877791  BOT LUI....comentarios
    #4193694080652596 obtener reacciones
    
    id_publi='4640200359337023'
    email='jav2022123@gmail.com'
    pas='marytigrearias99'
    #publicacion=loginComentario(email, pas, id_publi);
    lda(1, 7)
    
    
    
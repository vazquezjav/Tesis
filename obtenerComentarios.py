# -*- coding: utf-8 -*-
"""
Created on Tue Apr 27 12:47:15 2021

@author: vazqu
"""

from bs4 import BeautifulSoup as bs4
import requests 
from unidecode import unidecode
import re

class Comentarios:
    
    def __init__(self,id_facebook):
         self.id_facebook=id_facebook
         self.respuesta_comentarios =[]
         self.comentarios=[]
         self.htmls=[]
         self.total=0
         self.url_respuestas=[]
         
         
    def separar_id_pagina_comentarios(self, url):
        #global respuesta_comentarios
        split = url.split("=")
        id_estr=int(re.search(r'\d+', split[1]).group()) #separar numeros de string
        return id_estr
    def obtener_id_publicacion(self, url):
        return url.split("/")[-2]

    def encontrar_class_comentarios(self, html):
        selector = 'div > h3 ~ div'
        found = html.select(selector)
        sp=str(found[0]).split('"')
        return sp[1]

    def vector_respuestas_comentarios(self, maximo):
        #crear un vector con el maximo de respuestas de un comentario 
        respuesta=['1 respuesta',]
        for j in range(2,maximo+1):
            respuesta.append(str(j)+' respuestas')
            #[str(j)+' respuestas' for j in range(2,maximo+1)]
        return respuesta

    def obtener_comentarios_respuesta_comentarios(self, url):
        #mediante web scraping optener las respuestas de los comentarios 
        #recibe la url previamente obtenida que nos direcciona a la pagina de respuestas a un comentario
        
        res =requests.get(url)
        soup =bs4(res.text , 'html.parser')
        filtrado=soup.findAll('div', {'class':self.encontrar_class_comentarios(soup)})
        for i in range(1,len(filtrado)):
            self.total +=1
            self.respuesta_comentarios.append(filtrado[i].text)
        
        tags_a=soup.findAll("a")
        for i in tags_a:
            if i.text =='Ver respuestas anteriores':
                url_respuestas_anteriores='https://mbasic.facebook.com'+i['href']
                self.obtener_comentarios_respuesta_comentarios(url_respuestas_anteriores)
            
    def urls_respuestas_comentarios(self,html):
        #devuelve la lista de url de las respuestas de los comentarios 
        respuesta=self.vector_respuestas_comentarios(50)
        url_respuestas=[]
        try:
            tags_a=html.findAll("a")
            for i in tags_a:
                #print("Ete a = ",i.text)
                if i.text in respuesta:
                    if not i['href'] in url_respuestas:
                        url_respuestas.append('https://mbasic.facebook.com'+i['href'])
        except:
            print("No hay mas respuestas")
        return url_respuestas
    
    def obtener_comentarios(self):
        #id='3979298638823457'
        url='https://mbasic.facebook.com/photo?fbid='+self.id_facebook
        cont =0
        cont2 = 0
        more_comments=''
        id_siguiente, id_anterior = 0,0
        lista_urls=[]
        respuesta=self.vector_respuestas_comentarios(100)
        while True:
            if cont >1:
                if  url in lista_urls:
                    break
            
            res =requests.get(url)
            soup =bs4(res.text , 'html.parser')
            lista_urls.append(url)
            print("Url actual = ",url,"\n")
            if cont >0:
                id_anterior=self.separar_id_pagina_comentarios(url)
                soup = soup.find('div', {'id':'m_story_permalink_view'})
            else:
                #unicamente para obtener los comentarios de la primera pagina de la publicacion 
                comments = soup.findAll('div', {'class':'_14ye'})
                for i in comments:
                    self.total +=1
                    self.comentarios.append(i.text)
            self.htmls.append(soup)
            # para encontrar el link de direccionamiento hacia los otros comentarios 
            # en base a la etiqueta 'a' 
            try:
                tags_a=soup.findAll("a")
            except:
                    break
            for i in tags_a:
                text=unidecode(i.text)
                if cont >0:
                    if text ==' Ver mas comentarios...':
                        if cont2 == 0:
                            more_comments=i['href']
                        cont2 += 1
                else:
                    #obtener siguiente pagina comentarios unicamente primera pagina de comentarios 
                    link2 =soup.find('div', {'class':'_55wr async_elem'})
                    try:
                       more_comments = link2.find('a').get('href')
                    except:
                        print("No hay mas comentarios")
                        break
                if i.text in respuesta:
                    if not i['href'] in self.url_respuestas:
                        self.url_respuestas.append('https://mbasic.facebook.com'+i['href'])
            cont +=1
            cont2 =0 #reiniciamos contador para obtener el url de la siguiente pagina 'ver mas comentarios'
            url='https://mbasic.facebook.com'+more_comments
            id_siguiente = self.separar_id_pagina_comentarios(url)
    
            #print("Anterior: ",id_anterior," Siguiente: ",id_siguiente)
            print("Comentarios pagina = ",cont+1)
            
    def obtener_comentarios_paginas(self):
        print("Obteniedo comentarios paginas ")
        cont_com=0
        for j in self.htmls:
            if cont_com >0:
                try:
                    comments = j.findAll('div', {'class':self.encontrar_class_comentarios(j)})
                    for i in comments:
                        self.total +=1
                        if not i.text in self.comentarios:
                            self.comentarios.append(i.text)
                except:
                    break
            cont_com += 1
            
        return self.comentarios

    def guardar_respuesta_comentarios(self):
        for html in self.htmls:
            rs=self.urls_respuestas_comentarios(html)
            if  rs != []:
                for i in rs:
                    self.obtener_comentarios_respuesta_comentarios(i)
        print("total comentarios = ",self.total)
        return self.respuesta_comentarios
    
    def guardar_respuesta_comentarios2(self):
        print("Obteniendo comentarios respuestas")
        if  self.url_respuestas != []:
            for i in self.url_respuestas:
                self.obtener_comentarios_respuesta_comentarios(i)
        print("total comentarios = ",self.total)
        return self.respuesta_comentarios
    
    
    
# -*- coding: utf-8 -*-
"""
Created on Fri May 14 15:32:17 2021

@author: vazqu
"""

from gensim import corpora, models
import gensim
from pprint import pprint

import pyLDAvis.gensim_models
import pickle
import pyLDAvis
import os

from matplotlib import pyplot as plt
from wordcloud import WordCloud, STOPWORDS
import matplotlib.colors as mcolors
import pandas as pd
import numpy as np 
import random
from gensim.models.coherencemodel import CoherenceModel

from sklearn.manifold import TSNE
from bokeh.plotting import figure, output_file, show
from bokeh.models import ColumnDataSource, HoverTool
from bokeh.palettes import all_palettes
#import warnings
#warnings.filterwarnings("ignore", category=DeprecationWarning)

class ModeloLDA():
    
    def __init__(self, lemantizado, comentarios):
        #print(1)
        self.diccionario_LDA=corpora.Dictionary(lemantizado)
        self.corpus = [self.diccionario_LDA.doc2bow(text) for text in lemantizado]
        self.lda_model=gensim.models.LdaModel
        self.lemantizado = lemantizado
        self.comentarios = comentarios
        self.comentariosTopicos = None
        self.path='C:\\Users\\vazqu\\Desktop\\10mo\\Tesis\\Desarrollo\\django\\api\\desarrollo\\'
    def modelo(self, topics, id_publicacion):
        
        self.lda_model = gensim.models.LdaModel(corpus=self.corpus, 
                                                id2word=self.diccionario_LDA, 
                                                num_topics=topics,
                                                per_word_topics=True, 
                                                passes=30,
                                                chunksize=5,
                                                iterations = 50, # 200
                                                random_state = 42,
                                                eta = 'auto',
                                                #alpha=[0.01]*topics,
                                                #eta=[0.01]*len(self.diccionario_LDA.keys())
                                                )
        pprint(self.lda_model.print_topics())
        path_topics = self.graficarTopicos(topics,id_publicacion)
        path_pyldavis = self.guardar(id_publicacion)
        self.comentariosTopicos= self.formato_topico_oracion()
        self.graficarTSNE(topics)
        
        return path_topics,path_pyldavis, self.comentariosTopicos['topico']
        
    def graficar(self, num_topics, lda_model):
        pyLDAvis.enable_notebook()
        LDAvis_data_filepath = os.path.join('./ldavis_prepared_'+str(num_topics))
        if 1 == 1:
            LDAvis_prepared = pyLDAvis.gensim_models.prepare(lda_model, self.corpus, self.diccionario_LDA)
            with open(LDAvis_data_filepath, 'wb') as f:
                pickle.dump(LDAvis_prepared, f)
        # load the pre-prepared pyLDAvis data from disk
        with open(LDAvis_data_filepath, 'rb') as f:
            LDAvis_prepared = pickle.load(f)
        
        pyLDAvis.save_html(LDAvis_prepared, './ldavis_prepared_' + str(num_topics) + '.html')
        LDAvis_prepared

    def guardar(self, id_publicacion):
        vis = pyLDAvis.gensim_models.prepare(topic_model=self.lda_model, corpus=self.corpus, dictionary=self.diccionario_LDA)
        #pyLDAvis.enable_notebook(format(vis))
        #pyLDAvis.display(vis)
        
        #pyLDAvis.enable_notebook(format('text'))
        #pyLDAvis.display(vis)
        
        path=self.path+'pyLDAvis\\lda_'+str(id_publicacion)+'.html'
        pyLDAvis.save_html(vis, path)
        return path

    def graficarTopicos(self, num_topics, id_publicacion):
        cols = [color for name, color in  mcolors.XKCD_COLORS.items()]
        cloud = WordCloud(stopwords=self.lemantizado,
                  background_color='white',
                  width=500,
                  height=400,
                  max_words=10,
                  colormap='tab10',
                  color_func=lambda *args, **kwargs: cols[random.randint(0, 500)],
                  prefer_horizontal=1.0)

        topics = self.lda_model.show_topics(formatted=False)

        fig, axes = plt.subplots(1, num_topics, figsize=(15,15), sharex=True, sharey=True)
        for i, ax in enumerate(axes.flatten()):
            fig.add_subplot(ax)
            topic_word = dict(topics[i][1]) #convertir diccionario las palabras claves
            cloud.generate_from_frequencies(topic_word, max_font_size=300)
            plt.gca().imshow(cloud)
            plt.gca().set_title('Topico ' + str(i), fontdict=dict(size=16))
            plt.gca().axis('off')

        plt.subplots_adjust(wspace=0, hspace=0)
        plt.axis('off')
        plt.margins(x=0, y=0)
        plt.tight_layout()
        fig.patch.set_facecolor('xkcd:white')
        fig.set_figwidth(14)
        fig.set_figheight(2)
        path=self.path+'imagenes_topicos\\topics_'+str(num_topics)+'_'+str(id_publicacion)+'.png'
        fig.savefig(path)
        plt.show()
        return path
    
    def formato_topico_oracion(self):
        topics_df= pd.DataFrame()   
        
        for i, row_list in enumerate(self.lda_model[self.corpus]):
            row =  row_list[0] if self.lda_model.per_word_topics else row_list
            row = sorted(row, key=lambda x: (x[1]), reverse=True)
            for j, (topic_num, prop_topic) in enumerate(row):
                if j==0:
                    wp = self.lda_model.show_topic(topic_num)
                    topic_keywords = ", ".join([word for word, prop in wp])
                    d=int(topic_num)
                    topics_df = topics_df.append(pd.Series([int(format(d, '.0f')), round((prop_topic*100),2), topic_keywords]), ignore_index=True)
                else:
                    break
        
        contents = pd.Series(self.comentarios)
        topics_df = pd.concat([topics_df, contents], axis=1)
        topics_df.columns = ['topico', 'coherencia', 'palabras claves','comentario']
        return topics_df
    
    
    def graficarTSNE(self,num_topics):
        
        #obtener copia del dataframe de los topicos con las oraciones 
        topics_coments = self.comentariosTopicos
        
        # obtener los pesos de los Topicos 
        topic_weights = []
        for i, row_list in enumerate(self.lda_model[self.corpus]):
            topic_weights.append([w for i, w in row_list[0]])
            
        # array de los pesos de los Topicos 
        arr = pd.DataFrame(topic_weights).fillna(0).values

        # mantener los puntos separados 
        #arr = arr[np.amax(arr, axis=1) > 0.35]

        # topico dominante en cada documento 
        topic_num = np.argmax(arr, axis=1)
        tsne_model = TSNE(n_components=2, verbose=1, random_state=42, angle=.99, init='pca')
        tsne_lda = tsne_model.fit_transform(arr)
        
        topics_coments['x'] = tsne_lda[:,0]
        topics_coments['y'] = tsne_lda[:,1]
        
        cluster_colors = {0: 'blue', 1: 'green', 2: 'yellow', 3: 'red', 4: 'skyblue', 5:'salmon', 6:'orange', 7:'maroon', 8:'crimson', 9:'black', 10:'gray',11:'coral',12:'cyan',13:'violet',14:'orange'}
        topics_coments['colors'] = topics_coments['topico'].apply(lambda l: cluster_colors[l])
        top_labels = {0: 'Topico 0', 1:'Topico 1', 2:'Topico 2', 3:'Topico 3', 4:'Topico 4',5:'Topico 5',6:'Topico 6',7:'Topico 7', 8:'Topico 8',9:'Topico 9',10:'Topico 10',11:'Topico 11',12:'Topico 12',13:'Topico 13',14:'Topico 14'}
        
        topics_coments['topico']= topics_coments['topico'].astype(np.int64)

        source = ColumnDataSource(data=dict(
                                    x = topics_coments.x, 
                                    y = topics_coments.y, 
                                    colors = [all_palettes['Set1'][num_topics][i] for i in topics_coments.topico],
                                    title=topics_coments.comentario,
                                    alpha = [0.9] * topics_coments.shape[0],
                                    size = [7] * topics_coments.shape[0]
                                    ))
        source = ColumnDataSource(dict(
                x = topics_coments['x'],
                y = topics_coments['y'],
                color = topics_coments['colors'],
                label  = topics_coments['topico'].apply(lambda l: top_labels[l]),
                #topic_key = embedding['hue'],
                content = topics_coments['comentario']
            ))
        
        title = 'TSNE ITERACTIVO'
        plot_lda = figure(plot_width = 1000, plot_height = 600,
                 title= title, tools="pan,wheel_zoom,box_zoom,reset,hover",
                  x_axis_type=None, y_axis_type=None, min_border=1
                 )
        plot_lda.scatter(x='x', y='y', legend='label', source=source,
                 color='color', alpha=0.8, size=10)
        
        hover = plot_lda.select(dict(type= HoverTool))
        hover.tooltips = {"Comentario":"@content","Topico":"@label"}
        plot_lda.legend.location ='top_left'
        output_file('itera46.html')
        show(plot_lda)
        print(9)
    
                 
                  
                   
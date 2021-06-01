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
import random
from gensim.models.coherencemodel import CoherenceModel

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
        
    def modelo(self, topics, id_publicacion):
        
        self.lda_model = gensim.models.LdaModel(corpus=self.corpus, 
                                                id2word=self.diccionario_LDA, 
                                                num_topics=topics,
                                                per_word_topics=True, 
                                                passes=30,
                                                chunksize=5,
                                                iterations = 200,
                                                eta = 'auto',
                                                #alpha=[0.01]*topics,
                                                #eta=[0.01]*len(self.diccionario_LDA.keys())
                                                )
        pprint(self.lda_model.print_topics())
        self.graficarTopicos(topics)
        self.guardar(id_publicacion)
        #print(self.formato_topico_oracion())
        self.coherencia()
        
        
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
        pyLDAvis.save_html(vis, ('./pyLDAvis/lda_'+str(id_publicacion)+'.html'))

    def graficarTopicos(self, num_topics):
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
        plt.show()
    
    def formato_topico_oracion(self):
        topics_df= pd.DataFrame()   
        
        for i, row_list in enumerate(self.lda_model[self.corpus]):
            row =  row_list[0] if self.lda_model.per_word_topics else row_list
            row = sorted(row, key=lambda x: (x[1]), reverse=True)
            for j, (topic_num, prop_topic) in enumerate(row):
                if j==0:
                    wp = self.lda_model.show_topic(topic_num)
                    topic_keywords = ", ".join([word for word, prop in wp])
                    topics_df = topics_df.append(pd.Series([round(topic_num), round((prop_topic*100),2), topic_keywords]), ignore_index=True)
                else:
                    break
        
        contents = pd.Series(self.comentarios)
        topics_df = pd.concat([topics_df, contents], axis=1)
        topics_df.columns = ['Topico', 'Coherencia % ', 'Palabras claves','Comentarios']
        return topics_df
    
    def coherencia(self):
        coherence_model_lda = CoherenceModel(model=self.lda_model, texts=self.lemantizado, dictionary=self.diccionario_LDA, coherence='c_v')
        coherence_lda = coherence_model_lda.get_coherence()
        print('Coherencia Score: ', coherence_lda)
                 
                  
                   
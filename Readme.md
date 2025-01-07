#proyecto Solen chatbot 

##Configuracion inicial
Previo a entrenar es necesario activar el requirements donde se instala spacy

Luego es necesario cargar el modelo preentrenado en español
python -m spacy download es_core_news_md 


=======
## Entrenar modelo: 
rasa train
## Correr shell: 
rasa run

##correr api: 

rasa run -m models --enable-api --cors "*"

test
'''
curl -X POST http://localhost:5005/webhooks/rest/webhook -H "Content-Type: application/json" -d '{
    "sender": "Test1",
    "message": "hola"
}'

'''

correr api token: rasa run -m models --enable-api --cors "* --auth-token thisismysecret


import requests 
import random
import time

URL = 'http://172.19.0.3:30222/produto'

lista_produtos = []

def popular_lista():
    global lista_produtos
    lista_produtos = []
    for item in get_all():
        lista_produtos.append(item['id'])
    print(lista_produtos)


def get_all():
    r = requests.get(url = URL)
    return r.json()


def get_by_id(id):
    r = requests.get(url = URL + '/' + str(id))
    popular_lista()
    print(lista_produtos)


def add_produto(produto):
    r = requests.post(url=URL, json=produto)
    popular_lista()
    print(lista_produtos)


def delete(id):
    r = requests.delete(url = URL + '/?id=' + str(id))
    popular_lista()
    return r


popular_lista()


while(True):
    n = random.randint(1,1000)

    if(n % 5 == 0 and len(lista_produtos) > 0):
        delete(random.randint(1,len(lista_produtos)-1))

    if (n % 2 == 0):
        add_produto({'nome': 'produto', 'Preco': 1000, 'categoria': 'categoria_x'})

    get_all()
    print('Executou')
    print(len(lista_produtos))
    time.sleep(0.5)
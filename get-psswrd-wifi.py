import os


def get_senha():
    get_name = 'Netsh wlan show profile | find "s:"'
    out_name = (os.popen(get_name)).read()
    ssid = out_name.split()[6::]
    get_password = f'Netsh wlan show profile name={ssid[0]} key=clear'
    out_password = (os.popen(get_password)).read()
    index = out_password.find("Chave            : ")
    list = out_password[index::].split()[0:3]
    password = list[2]
    return password


novo_arquivo = 'senha.txt'
senha = "A senha é: " + get_senha()

with open(novo_arquivo, 'w') as file:
    file.write(senha)

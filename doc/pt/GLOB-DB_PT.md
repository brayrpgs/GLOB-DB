# Documentação da configuração e do banco de dados

<aside>
💡

Este projeto gerencia os arquivos necessários para executar todos os microsserviços, incluindo o banco de dados e a configuração inicial (arquivos .env, esquemas de banco de dados, configurações, etc.). Ele funciona como um ponto central que unifica esses componentes.

</aside>

# Passo 1:

- Clonar o projeto do GitHub com o link:

```
git clone https://github.com/brayrpgs/GLOB-DB.git
```

# Passo 2:

- Depois de clonado, abra a pasta

> GLOB-DB  
>
- e copie estes 3 arquivos de configuração:

> .vscode  
.env  
compose.yml  
>

![image.png](image.png)

Copie esses 3 arquivos para o diretório pai (pasta anterior).  
O resultado deve ser parecido com a imagem seguinte.

![image.png](image%201.png)

Abra um terminal ou CMD nessa pasta e execute o comando:

```
code .
```

# Passo 3:

Execute a tarefa chamada `Docker`.

<aside>
💡

Para executar tarefas no VS Code, use o atalho `Shift + Ctrl + B` (Windows/Linux) ou `Shift + Cmd + B` (Mac).

</aside>

Depois de concluído, será exibida uma mensagem no terminal (pode variar).

![image.png](image%202.png)

# Passo 4:

Acesse no navegador: `localhost:8080` ou `127.1.1.1:8080`.

Aparecerá a tela de login:

![image.png](image%203.png)

Entre com as credenciais definidas no arquivo `.env`:

```
PGADMIN_DEFAULT_EMAIL=xxxxxxxxxxxxx
PGADMIN_DEFAULT_PASSWORD=xxxxxxxxxxx
```

# Passo 5:

Agora registre uma conexão com o servidor PostgreSQL.

![image.png](image%204.png)

Configure a conexão e atribua um **Nome** qualquer.

![image.png](image%205.png)

Na aba 'Connection', preencha os seguintes campos:

> Host name: `GLOB-DB`  
Port: `5432`  
Username: `POSTGRES_USER` (definido em `.env`)  
Password: `POSTGRES_PASSWORD` (definido em `.env`)  
Save password: `marcar`  
>

![image.png](image%206.png)

Clique em Salvar!

# Passo 6:

Se tudo deu certo, prossiga para carregar os esquemas.

Será criada a base de dados `GLOB_DB` (definida em `.env`).

![image.png](image%207.png)

Use a opção Restaurar...

![image.png](image%208.png)

Clique no ícone de pasta.

Clique nos três pontos para abrir opções avançadas.

![image.png](image%209.png)

Depois clique em `Upload`.

![image.png](image%2010.png)  
![image.png](image%2011.png)

Envie o arquivo `DATABASE.SQL` que está em:  
 `GLOB-DB\database`

![image.png](image%2012.png)  
![image.png](image%2013.png)

Selecione-o e pressione 'Select'.

![image.png](image%2014.png)

Por fim, clique em 'Restore' para concluir o processo.

![image.png](image%2015.png)

<aside>
💡

Para verificar se tudo foi instalado corretamente, confira se as tabelas aparecem (como no exemplo). Em versões posteriores, mais tabelas podem aparecer.

</aside>

![image.png](image%2016.png)

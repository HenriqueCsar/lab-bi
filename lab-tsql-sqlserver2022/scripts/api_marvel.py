import requests
import pyodbc

# Coloque aqui sua chave pública e privada da API da Marvel
public_key = 'e7b13e008c1895e7e5c0d01e1839bbe4'
private_key = 'de588c3a427ed8591c7baad4e2dcaf04e1aea2fe'

# Crie a string de autenticação para a API da Marvel
ts = '1'
hash = 'SUA_HASH'
auth = f'&ts={ts}&apikey={public_key}&hash={hash}'

# Configure a string de conexão com o banco de dados SQL Server
conn_string = 'DRIVER={ODBC Driver 17 for SQL Server};SERVER=HENRIQUE;DATABASE=MARVEL;UID=HENRIQUE\Henrique-S;PWD='

# Conecte-se ao banco de dados
conn = pyodbc.connect(conn_string)
cursor = conn.cursor()

# Execute uma consulta na API da Marvel para obter os quadrinhos mais recentes
url = f'https://gateway.marvel.com:443/v1/public/comics?limit=100{auth}'
response = requests.get(url)

# Obtenha os dados da resposta da API
data = response.json()['data']

# Para cada quadrinho, insira os dados na tabela do banco de dados
for comic in data['results']:
  title = comic['title']
  issue_number = comic['issueNumber']
  description = comic['description'] or 'Sem descrição'
  thumbnail_path = comic['thumbnail']['path']
  thumbnail_extension = comic['thumbnail']['extension']
  thumbnail_url = f'{thumbnail_path}.{thumbnail_extension}'
  sql = f"INSERT INTO Comics (Title, IssueNumber, Description, ThumbnailUrl) VALUES (?, ?, ?, ?)"
  values = (title, issue_number, description, thumbnail_url)
  cursor.execute(sql, values)
  conn.commit()

# Feche a conexão com o banco de dados
cursor.close()
conn.close()
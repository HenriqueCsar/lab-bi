Restore database [DATABASE]
file = N'DATABASE_DATA',
filegroup = 'PRIMARY',
file = N''

Partial -- Não estou trazendo todos os datafiles 

norecovery ---- (Aguardar antes de iniciar)
recovery --() deixar disponível 

file --- qunado se trata de arquivo diferencial você pode colocar 1, depende de quanto foi restaurado de diferencial.


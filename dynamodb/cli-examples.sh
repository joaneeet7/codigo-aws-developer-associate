#!/bin/bash

# Demostración de la expresión de proyección
aws dynamodb scan --table-name UserPosts --projection-expression "user_id, content"

# Demostración de la expresión de filtro
aws dynamodb scan --table-name UserPosts --filter-expression "user_id = :u" --expression-attribute-values '{ ":u": {"S":"john123"}}'

# Demostración del tamaño de página: hará 1 llamada a la API si tienes 3 elementos
aws dynamodb scan --table-name UserPosts 

# Hará 3 llamadas a la API si tienes 3 elementos
aws dynamodb scan --table-name UserPosts --page-size 1

# Demostración de artículo máx:
aws dynamodb scan --table-name UserPosts --max-items 1

# Obtener el siguiente elemento
aws dynamodb scan --table-name UserPosts --max-items 1 --starting-token eyJFeGNsdXNpdmVTdGFydEtleSI6IG51bGwsICJib3RvX3RydW5jYXRlX2Ftb3VudCI6IDF9

# Obtener el siguiente elemento
aws dynamodb scan --table-name UserPosts --max-items 1 --starting-token eyJFeGNsdXNpdmVTdGFydEtleSI6IG51bGwsICJib3RvX3RydW5jYXRlX2Ftb3VudCI6IDJ9

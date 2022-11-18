#!/bin/sh

curl -o translate-en_es-1_0.argosmodel https://argosopentech.nyc3.digitaloceanspaces.com/argospm/translate-en_es-1_0.argosmodel
unzip translate-en_es-1_0.argosmodel
curl -o translate-es_en-1_0.argosmodel https://argosopentech.nyc3.digitaloceanspaces.com/argospm/translate-es_en-1_0.argosmodel
unzip translate-es_en-1_0.argosmodel
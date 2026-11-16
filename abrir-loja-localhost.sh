#!/usr/bin/env bash
# Serve a pasta desta loja em http://localhost:8000 e abre a loja no navegador padrão.
# Funciona no Linux e no macOS. Deixe esta janela aberta durante a demonstração.
# Para parar, feche a janela ou aperte Ctrl+C.
cd "$(dirname "$0")" || exit 1
URL="http://localhost:8000/vitrine-loja.html"

if command -v python3 >/dev/null 2>&1; then
  PY=python3
elif command -v python >/dev/null 2>&1; then
  PY=python
else
  echo
  echo "Não encontrei o Python nesta máquina."
  echo "Instale o Python 3 (https://www.python.org/downloads/) ou use a extensão"
  echo "Live Server do VS Code para abrir a vitrine-loja.html."
  echo
  read -r -p "Aperte Enter para fechar." _
  exit 1
fi

echo "Loja em $URL"
echo "Deixe esta janela aberta durante a demonstração. Ctrl+C para parar."

# Abre o navegador um segundo depois, quando o servidor já estiver no ar.
(
  sleep 1
  if [ "$(uname)" = "Darwin" ]; then
    open "$URL"
  elif command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$URL" >/dev/null 2>&1
  fi
) &

"$PY" -m http.server 8000

#!/bin/bash

case "$1" in
  --date)
    echo "Dzisiejsza data: $(date)"
    ;;
  --logs)
    if [ -z "$2" ]; then
      # Tworzenie 100 plików logx.txt
      for ((i=1; i<=100; i++)); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Nazwa skryptu: $0" >> "$filename"
        echo "Data: $(date)" >> "$filename"
      done
      echo "Utworzono 100 plików log"
    else
      num_logs=$2
      # Tworzenie określonej liczby plików logx.txt
      for ((i=1; i<=num_logs; i++)); do
        filename="log${i}.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Nazwa skryptu: $0" >> "$filename"
        echo "Data: $(date)" >> "$filename"
      done
      echo "Utworzono $num_logs plików log"
    fi
    ;;
  --help)
    echo "Dostępne opcje:"
    echo "--date         - wyświetla dzisiejszą datę"
    echo "--logs         - tworzy 100 plików logx.txt"
    echo "--logs <liczba> - tworzy określoną liczbę plików logx.txt"
    echo "--help         - wyświetla wszystkie dostępne opcje"
    ;;
  *)
    echo "Nieznana opcja. Użyj --help, aby zobaczyć dostępne opcje."
    ;;
esac

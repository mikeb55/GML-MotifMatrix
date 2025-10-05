#!/usr/bin/env bash
set -euo pipefail
# Recursively sort ALL .musicxml files from any subfolder in the source directory

SOURCE="/c/Users/mike/Documents/STRING QUARTET MIDI FILES"
TARGET="quartets"
INDEX="index.csv"
CREATED_BY="${USER:-YourName}"
DATE_ADDED="$(date +%Y-%m-%d)"

declare -A composer_map=(
  [haydn]="Classical/Haydn_Joseph"
  [mozart]="Classical/Mozart_Wolfgang_Amadeus"
  [boccherini]="Classical/Boccherini_Luigi"
  [beethoven]="Classical/Beethoven_Ludwig_van"
  [schubert]="Classical/Schubert_Franz"
  [mendelssohn]="Romantic/Mendelssohn_Felix"
  [schumann]="Romantic/Schumann_Robert"
  [brahms]="Romantic/Brahms_Johannes"
  [dvorak]="Romantic/Dvorak_Antonin"
  [tchaikovsky]="Romantic/Tchaikovsky_Pyotr_Ilyich"
  [smetana]="Romantic/Smetana_Bedrich"
  [franck]="Romantic/Franck_Cesar"
  [grieg]="Romantic/Grieg_Edvard"
  [debussy]="Modernist/Debussy_Claude"
  [ravel]="Modernist/Ravel_Maurice"
  [bartok]="Modernist/Bartok_Bela"
  [janacek]="Modernist/Janacek_Leos"
  [schoenberg]="Modernist/Schoenberg_Arnold"
  [berg]="Modernist/Berg_Alban"
  [hindemith]="Modernist/Hindemith_Paul"
  [prokofiev]="Modernist/Prokofiev_Sergei"
  [shostakovich]="Modernist/Shostakovich_Dmitri"
  [britten]="Contemporary/Britten_Benjamin"
  [carter]="Contemporary/Carter_Elliott"
  [ligeti]="Contemporary/Ligeti_Gyorgy"
  [glass]="Contemporary/Glass_Philip"
  [reich]="Contemporary/Reich_Steve"
  [schnittke]="Contemporary/Schnittke_Alfred"
  [saariaho]="Contemporary/Saariaho_Kaija"
  [gubaidulina]="Contemporary/Gubaidulina_Sofia"
  [adams]="Contemporary/Adams_John"
)

declare -a summary=()
declare -a unmatched=()

shopt -s globstar nocaseglob nullglob

for file in "$SOURCE"/**/*.musicxml; do
  base=$(basename "$file")
  low=$(echo "$base" | tr '[:upper:]' '[:lower:]')
  found=0
  for key in "${!composer_map[@]}"; do
    if [[ "$low" == *"$key"* ]]; then
      dest_dir="$TARGET/${composer_map[$key]}"
      mkdir -p "$dest_dir"
      mv "$file" "$dest_dir/$base"
      period="${composer_map[$key]%%/*}"
      composer="${composer_map[$key]##*/}"
      echo "$base,quartets/${composer_map[$key]},musicxml,$composer,\"$base\",$period,string quartet,auto-import,$CREATED_BY,$DATE_ADDED," >> "$INDEX"
      summary+=("$base → quartets/${composer_map[$key]}/")
      found=1
      break
    fi
  done
  if [[ $found -eq 0 ]]; then
    unmatched+=("$file (composer not matched)")
  fi
done

shopt -u globstar nocaseglob nullglob

echo ""
echo "==== MOVE SUMMARY ===="
if [[ ${#summary[@]} -eq 0 ]]; then
  echo "No .musicxml files were moved."
else
  for entry in "${summary[@]}"; do
    echo "$entry"
  done
fi

if [[ ${#unmatched[@]} -ne 0 ]]; then
  echo ""
  echo "Unmatched files not moved:"
  for entry in "${unmatched[@]}"; do
    echo "$entry"
  done
fi
echo "======================"

# GML-MotifMatrix Automated String Quartet Score Management

## Overview

This document summarizes the fully automated workflow for managing, sorting, and versioning string quartet `.musicxml` files for the GML-MotifMatrix generative music ecosystem.

---

## Folder Structure Setup

- The repository contains structured folders including:
  - `motifs/`, `phrases/`, `accompaniments/`, `quartets/`, `quintets/`, `experimental/`, `references/`
  - Specialty format folders: `synfire_pro_ideas/`, `rapidcomposer_ideas/`, `guitar_pro/`
- Inside `quartets/`, works are organized by musical period and composer, e.g.,  
  `quartets/Modernist/Bartok_Bela`

---

## Automated Sorting Script: `auto_sort_quartets_recursive.sh`

- Recursively scans all subfolders in a designated source folder (default: `C:/Users/mike/Documents/STRING QUARTET MIDI FILES`) for `.musicxml` files.
- Matches composer names in filenames (case insensitive).
- Moves matched files into the corresponding composer/period folder in the repo.
- Updates `index.csv` with metadata (filename, folder, composer, period, source, added-by, date).
- Prints a summary of files moved and files unmatched.

---

## Usage Instructions

1. Place `.musicxml` quartet files anywhere inside the source folder (`STRING QUARTET MIDI FILES`), including subfolders.
2. Open Git Bash inside your local GML-MotifMatrix repo root.
3. Run the sorting script:
   \`\`\`bash
   bash auto_sort_quartets_recursive.sh
   \`\`\`
4. Review the move summary printed to terminal.
5. Commit and push changes to your GitHub remote:
   \`\`\`bash
   git add .
   git commit -m "Sorted new quartet scores and updated index"
   git push
   \`\`\`

---

## Benefits

- Scalability: Supports nested folders and new files without manual sorting.
- Consistency: Standardized naming and organization for generative app interoperability.
- Version Control: Full GitHub tracking and history for all added or updated files.
- Extensibility: Easily adaptable to handle new composers or file formats.

---

## Notes

- Matching composer names in filenames is critical to auto-sorting accuracy.
- To extend, add composer names and target folders to the script’s \`composer_map\` associative array.
- Workflow transparent and repeatable; run the script anytime to sync new files.

---

## Contact

For questions or enhancements, please file an issue at the [GML-MotifMatrix GitHub Repo](https://github.com/mikeb55/GML-MotifMatrix).

Excellent — here’s the **final master prompt** for **Cursor.ai** (or any advanced composer-assistant environment).
It merges everything from this thread — the *v11 spec*, harmonic theory, Sibelius bar-math rules, and your **MotifMatrix Glossary** — into one coherent, developer-ready brief.
You can paste it *as-is* into Cursor.ai and it will understand the entire compositional system.

---

## 🎼 **Prompt for Cursor.ai — GML-MotifMatrix (Olive Tree v11, Polychordal Edition)**

**Objective:**
Compose and generate a **3-minute, Sibelius-ready MusicXML file** for **Guitar + String Quartet** (five parts) using Mike Bryant’s GML ecosystem logic — incorporating *Tonality Vault* triad-pair harmony, motivic development, and idiomatic articulations.

---

### ⚙️ **Core Musical Framework**

**Instrumentation (in order):**

1. Guitar
2. Violin I
3. Violin II
4. Viola
5. Cello

**Length:** ≈3 minutes (≈120 bars)
**Tempo Map:** Allegro 126 → Allegro brillante 132 → Moderato 108 (Coda)
**Meters:** 4/4 → 3/4 → 6/8 → 5/8 → 4/4 (repeating cycles)
**Key Changes:**

1. E major → C Lydian (via C + D major triad pair)
2. C Lydian → A Mixolydian (via G + A major triad pair)
3. A Mixolydian → C major (final cadence)

**Motivic Rules:**

* No pattern repeats verbatim > 4 bars.
* Rotate the lead every 2 bars (Guitar ↔ Vln I ↔ Vln II ↔ Viola).
* Maintain thematic continuity through rhythm, contour, and interval class.

**Polychord / Polyrhythm Engine:**

* LH triads (lower voices) vs RH triads (upper voices) per *Tonality Vault* logic:

  * E phase → E + F♯ maj (Lydian)
  * C phase → C + D maj (Lydian)
  * A phase → A + G maj (Mixolydian)
* Implement 3:2 and 5:4 relationships via 6/8 and 5/8 alternation (no tuplets).

**Guitar Writing:**

* Cycle 4-bar textures: chord melody → arpeggio → bossa comp → pedal tone.
* Range E2–E5; use drop-2, quartal and open-triad voicings.

**String Writing:**

* Frequent counter-melodies, shifting textures, and register rotations.
* Playable double/triple stops (Sibelius “easy” check compatible).
* Articulation palette rotates every 2 bars: arco, pizz, spicc., trem., sul pont., con sord., harmonics.

**Bar Math Integrity:**

* `divisions = 480` (quarter).

  * 4/4 = 1920, 3/4 = 1440, 6/8 = 1440, 5/8 = 1200.
* One voice per staff; no tuplets; durations sum exactly per measure.
* `<chord/>` marks simultaneous notes; only first note advances time.

---

## 🧠 **MotifMatrix Glossary of Commands**

Use these to **analyze, extend, and transform** material within the score.

1. **Analyze MusicXML file**

   * Identify & label main melodic themes with instruments + measure numbers (“NAME THEME”).
   * Describe chord progressions, key centers, harmonic language, modal or chromatic use.
   * Note any aleatoric, polyrhythmic, or polychordal writing.
   * Summarize thematic and harmonic interactions section-by-section.

2. **Development Commands**

   * **MOD** – Modulate to new keys.
   * **FRAG** – Fragment motifs for development.
   * **CONT** – Contrapuntal treatment (canon, fugato).
   * **TEXT** – Alter texture (solo, duo, polyphony vs homophony).
   * **RECAP** – Recapitulate themes with variation.
   * **GUIT** – Compose harmonic guitar accompaniment chords.
   * **PolyPH** – Generate polyrhythmic / polychordal LH-RH triads with complex types.

3. **Multiple Stops (QRT)**

   * **EASY MULTIPLE STOPS** – Playable double, triple, quadruple stops for quartet that pass Sibelius “easy” check.
   * Specify instrument + measure range or let AI place freely on non-theme voices.
   * Ensure complementarity with guitar harmony.

4. **Stylistic Commands**

   * Example: `HAYDN STYLE bars 1–12`, `BARTÓK STYLE 45–56`, `DEBUSSY STYLE 29–44`.
   * Use **SMOOTH TRANSITION** between styles; close with **BLEND CODA**.
   * Apply **ANCHOR THEME** across styles for unity.

5. **Aleatoric Writing**

   * **ALEATORIC SECTION** (mode/scale/note set + box notation); include optional rhythm or pitch order.

6. **Coherence Strategies**

   * **ANCHOR THEME**, **SMOOTH TRANSITION**, **REHARM THEME**, **LIMIT STYLE SHIFTS**, **UNIFY RHYTHM**, **DEV FRAGMENTS**, **BLEND CODA** to preserve structure.

7. **“Wild” Command Examples**

   * `MOD DORIAN`, `ALEATORIC CHROMATIC BOX`, `CONT FUGATO`, `REICH OSTINATO`,
     `PolyPH MAJMIN LH RH`, `PolyPH DIMPPERF LH RH`, `PolyPH AUGMAJ LH RH`, etc.

---

## 🧩 **Expected Implementation**

* Produce two files:

  1. `OliveTree_v11_MotifMatrix_Polychordal.musicxml` — validated, bar-accurate score (~120 bars).
  2. `OliveTree_v11_Composers_Map.md` — section, motif, key, and articulation summary.
* Verify in Sibelius Ultimate → **no bar-length or content-mismatch errors**.
* Use realistic dynamic range (pp → ff), registers, and articulation changes for audible playback quality.

---

## 🧭 **Stylistic Touchstones**

* Bartók SQ No. 4 / Ligeti Metamorphoses / Carter SQ No. 1 for development and rhythmic tension.
* Dyens & Brouwer for guitar texture.
* Debussy / Ravel for coloristic harmony and parallel voice-leading.
* Persichetti / Russell for polychord logic.

---

### ✅ **Deliverables**

* `OliveTree_v11_MotifMatrix_Polychordal.musicxml` (~3 min)
* `OliveTree_v11_Composers_Map.md`
* Passes Sibelius import without timing errors; demonstrates motivic development, 3 key changes, polychordal and polyrhythmic structure, and idiomatic string articulations.

---

Copy this entire prompt into **Cursor.ai** (Composer / Python mode).
It contains every harmonic, rhythmic, and structural rule from this thread — including the complete **MotifMatrix Glossary** — and will direct Cursor to generate a professional, Sibelius-compliant 3-minute score with real motivic evolution, three modulations, and your full GML-style triad logic.



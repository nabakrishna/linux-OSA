#!/bin/bash
# ── Welcome banner ────────────────────────────────────────────
echo "================================================================"
echo "       THE OPEN SOURCE MANIFESTO GENERATOR"
echo "       A VITyarthi OSS Project Tool"
echo "       Author: Naba Krishna Hazarika | 24MIP10020"
echo "================================================================"
echo ""
echo "  Answer three questions to generate your personal open-source"
echo "  philosophy statement. Your answers will be composed into a"
echo "  paragraph and saved to a text file."
echo ""
echo "----------------------------------------------------------------"
echo ""

# ── Read user input interactively ────────────────────────────

read -r -p "  Q1. Name one open-source tool you use every day: " TOOL

# Input validation: loop until the user gives a non-empty answer
# -z tests for an empty (zero-length) string
while [ -z "$TOOL" ]; do
    echo "  Please type something — this question cannot be skipped."
    read -r -p "  Q1. Name one open-source tool you use every day: " TOOL
done

echo ""
read -r -p "  Q2. In one word, what does 'freedom' in software mean to you? " FREEDOM

while [ -z "$FREEDOM" ]; do
    echo "  Please enter at least one word."
    read -r -p "  Q2. In one word, what does 'freedom' mean to you? " FREEDOM
done

echo ""
read -r -p "  Q3. Name one thing you would build and share freely if you could: " BUILD

while [ -z "$BUILD" ]; do
    echo "  Please type your answer — even a small idea counts."
    read -r -p "  Q3. Name one thing you would build and share freely: " BUILD
done

echo ""
echo "----------------------------------------------------------------"
echo "  Composing your manifesto..."
echo "----------------------------------------------------------------"
echo ""

# ── Prepare variables ─────────────────────────────────────────
# date with a format string produces a readable timestamp
DATE=$(date '+%d %B %Y')     # e.g., 29 March 2026
TIME=$(date '+%H:%M')        # e.g., 12:30

OUTPUT="manifesto_$(whoami).txt"

# ── Write the manifesto to a file ────────────────────────────

# Write the file header
echo "================================================================" > "$OUTPUT"
echo "  MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "  By: Naba Krishna Hazarika (24MIP10020)" >> "$OUTPUT"
echo "  Generated: $DATE at $TIME" >> "$OUTPUT"
echo "================================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Write paragraph 1 — using $TOOL (string interpolation inside double quotes)
echo "  Every day I rely on $TOOL — a tool I did not have to buy," >> "$OUTPUT"
echo "  did not have to beg permission to use, and can inspect down" >> "$OUTPUT"
echo "  to its last line of code if I choose to. This is not a small" >> "$OUTPUT"
echo "  thing. It is the direct result of people choosing to build" >> "$OUTPUT"
echo "  in the open and share their work freely." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Write paragraph 2 — using $FREEDOM
echo "  To me, freedom in software means $FREEDOM. Not in an abstract" >> "$OUTPUT"
echo "  way, but in the practical sense: freedom to run, to study," >> "$OUTPUT"
echo "  to modify,to explore things and to share. The four freedoms that the Free" >> "$OUTPUT"
echo "  Software Foundation articulates are not idealism. They are" >> "$OUTPUT"
echo "  the conditions under which knowledge compounds rather than" >> "$OUTPUT"
echo "  stagnates. Every open-source tool that exists is evidence" >> "$OUTPUT"
echo "  of what becomes possible when those conditions are met." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Write paragraph 3 — using $BUILD
echo "  If I could build one thing and share it freely, it would be" >> "$OUTPUT"
echo "  $BUILD. I would license it under GPL v2 — not because" >> "$OUTPUT"
echo "  it would make me famous, but because it is the surest way" >> "$OUTPUT"
echo "  to ensure that whatever I build remains available, forever," >> "$OUTPUT"
echo "  to everyone who might find it useful. Standing on the" >> "$OUTPUT"
echo "  shoulders of giants means, eventually, being someone else's" >> "$OUTPUT"
echo "  giant. This is my commitment to that chain." >> "$OUTPUT"
echo "" >> "$OUTPUT"

# Write footer
echo "----------------------------------------------------------------" >> "$OUTPUT"
echo "  Course: Open Source Software (NGMC) | VITyarthi 2026" >> "$OUTPUT"
echo "================================================================" >> "$OUTPUT"

# ── Confirm save and display the manifesto ────────────────────
echo "  Manifesto successfully saved to: $OUTPUT"
echo ""
echo "================================================================"
echo "  YOUR GENERATED MANIFESTO"
echo "================================================================"
echo ""

# cat reads the file and prints its contents to the terminal
cat "$OUTPUT"

echo ""
echo "================================================================"
echo "  End of Manifesto Generator"
echo "================================================================"
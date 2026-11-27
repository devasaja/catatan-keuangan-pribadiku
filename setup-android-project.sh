#!/usr/bin/env bash
# Menyusun proyek Android (folder android/) dari file-file di root repo.
set -e
A=android/app/src/main
mkdir -p $A/assets $A/java/com/catatankeuangan/app $A/res/values $A/res/drawable $A/res/mipmap-anydpi-v26
cp settings.gradle.kts build.gradle.kts gradle.properties android/
cp app-build.gradle.kts android/app/build.gradle.kts
cp AndroidManifest.xml $A/
cp MainActivity.kt $A/java/com/catatankeuangan/app/
cp index.html icon-192.png $A/assets/
cp strings.xml colors.xml themes.xml $A/res/values/
cp ic_foreground.xml $A/res/drawable/
cp ic_launcher.xml $A/res/mipmap-anydpi-v26/ic_launcher.xml
cp ic_launcher.xml $A/res/mipmap-anydpi-v26/ic_launcher_round.xml
for d in mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  mkdir -p $A/res/mipmap-$d
  cp ic_launcher-$d.png $A/res/mipmap-$d/ic_launcher.png
  cp ic_launcher_round-$d.png $A/res/mipmap-$d/ic_launcher_round.png
done
echo "Proyek Android siap di folder android/"

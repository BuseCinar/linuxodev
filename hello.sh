#! /bin/bash
name=$(zenity --entry --title="name" --text="ogrenci adini gir:")
surname=$(zenity --entry --title="surname" --text="soyadini gir:")
vize=$(zenity --scale --title="vize" --text="vizeyi gir:")
final=$(zenity --scale --title="final" --text="final notunu gir:")

top=`expr $vize + $final`
ort=`expr $top / 2`

zenity --info --title="ortalama" --text="ortalamaniz: $ort"

echo "ad : "$name > transcript.txt
echo "soyad : "$surname >> transcript.txt
echo "vize : "$vize >> transcript.txt
echo "final : "$final >> transcript.txt
echo "ort : "$ort >> transcript.txt


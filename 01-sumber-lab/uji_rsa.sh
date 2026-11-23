#!/bin/sh
echo "pesan rahasia asli k6" > /work/pesan-asli.txt
openssl dgst -sha256 -sign /work/priv.pem -out /work/sig-asli.bin /work/pesan-asli.txt
openssl dgst -sha256 -verify /work/pub.pem -signature /work/sig-asli.bin /work/pesan-asli.txt
echo "diubah" >> /work/pesan-asli.txt
openssl dgst -sha256 -verify /work/pub.pem -signature /work/sig-asli.bin /work/pesan-asli.txt

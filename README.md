# inventaris-ci4
repo untuk tugas ukom website inventaris yang dibuat dengan codeigniter 4

## Database Diagram
![](https://cdn.discordapp.com/attachments/846580672244219910/905311525282144317/uCJcCv3V2AOFE2KowGEGuXF5wR-1lco9s6w-kvVDt0Ai6dh5Hp_QXQleI39Z-QI8ztf8l6Ejs_cUepow1301-h625.png)

## Gambar Pembagian Tugas
![](https://cdn.discordapp.com/attachments/846580672244219910/905281965568168026/Screenshot_79.png)

## Figma
https://www.figma.com/file/ITmc1VodAT1H0CVL22rZp8/Untitled?node-id=0%3A1

## Pembagian Tugas
### wahyu hidayat = 1
### Wulang Dhanadipa = 2
### Charles Daniel = 3
### M. Erlangga Darmawan = 4

charles
https://drive.google.com/drive/u/0/folders/1t9aRoR7jtuDAazQg4rbgyIs5qFwgNwUv
wulang
https://docs.google.com/forms/d/e/1FAIpQLSdxCOtxZxad89q3RMqP-kB_rV52KHONxliNclLQTTaS9KAhCw/viewscore?pli=1&pli=1&viewscore=AE0zAgCpL7lQOcvJZv_0RvtencOWv3tfGHaUi5KbtpWJTX7S9W4332hnsDM8yMNBWay6AeQ

## Trigger

![image](https://user-images.githubusercontent.com/79314300/141945804-0aef22e9-ace3-46cc-8f06-f33686871e07.png)

## Jalanin Stored Procedure
https://codeigniter4.github.io/userguide/database/call_function.html

## Stored Function ?
CREATE PROCEDURE updatestok(id_barang CHAR(8))
BEGIN
UPDATE stok SET stok.total_barang=(stok.jml_masuk-stok.jml_keluar) WHERE stok.id_barang=id_barang;
END;;

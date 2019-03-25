library(RMySQL)
#Membuka koneksi
con <- dbConnect(MySQL(), user="root", password="", host="localhost",
                 dbname="data")
#Menutup Koneksi
all_cons <- dbListConnections(MySQL())
for(con in all_cons) dbDisconnect(con)

library(RMySQL)
#Membuka koneksi
con <- dbConnect(MySQL(), user="root", password="", host="localhost",
                 dbname="data")

sql <- "SELECT * FROM test"
  
rs <- tryCatch(dbSendQuery(con, sql), finally = print("query ok"))

data.pelanggan <- fetch(rs, n=-1)
data.pelanggan

#Menutup Koneksi
all_cons <- dbListConnections(MySQL())
for(con in all_cons) dbDisconnect(con)


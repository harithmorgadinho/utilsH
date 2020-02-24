
cake = function(){

  library(mailR)

  cake_club_list<-read.csv("https://docs.google.com/spreadsheets/d/178L66__gbAHL8w8yZRZaIIVm7RtkYSVnYVo5oz_IB_g/export?format=csv")

Date_today=(Sys.Date())
Date_tomorrow=as.Date(Date_today)+1
Date_tomorrow=gsub(pattern = '-',replacement = '/',x = Date_tomorrow)
Date_tomorrow=strsplit(Date_tomorrow,'/')
Date_tomorrow=paste0(Date_tomorrow[[1]][3],'/',Date_tomorrow[[1]][2])

line_cake=which(cake_club_list$Date==Date_tomorrow)

temp=cake_club_list[line_cake,]

name=temp$Name
name
Email=temp$Email
Email
email_text= paste('Hi ',name,', this is just a friendly reminder that tomorrow is your turn to bring cake :). Here is a list if you need inspiration: https://www.taste.com.au/baking/articles/top-50-cakes/4zag3onm,
                  - The cake bot',sep = "")



send.mail(from="cakebot.ggbc@gmail.com",
          to=as.character(Email),
          subject="Cake Tomorrow",
          body=email_text,
          html=T,
          smtp=list(host.name = "smtp.gmail.com",
                    port = 465,
                    user.name = "cakebot.ggbc@gmail.com",
                    passwd = 'antonelli_lab',
                    ssl = T),
          authenticate=T,
attach.files="/Users/harith/Dropbox/email_sender/247-2473615_birthday-cake-chocolate-cake-clip-art-chocolate-cake.png")
}

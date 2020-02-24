
m=function(to='harithmorgadinho@gmail.com',subject='process finished',email_text='The process has finished running'){
  library(mailR)
  send.mail(from="rstudioharith@gmail.com",
            to=to,
            subject=subject,
            body=email_text,
            html=T,
            smtp=list(host.name = "smtp.gmail.com",
                      port = 465,
                      user.name = "rstudioharith@gmail.com",
                      passwd = 'rstudio5057001411',
                      ssl = T),
            authenticate=T)
}
#attach.files="/Users/harith/Dropbox/email_sender/247-2473615_birthday-cake-chocolate-cake-clip-art-chocolate-cake.png")
m()

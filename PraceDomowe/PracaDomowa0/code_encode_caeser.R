library(caesar)

caesar::caesar(tolower('Tydłprf żtpbńś ątęboęzpb hępńy słąś ął łoębjątęboęzp opłnkę żbhofroty Nńtbhbf słąc ął sśołgębdł ę nńtbuńłżtśopbdł kyżtśkęy')
,shift = 5)

letters_polish <- c(letters, c('ą', 'ę', 'ć', 'ł', 'ń', 'ó', 'ż', 'ź', 'ś'))
letters_polish <- setdiff(letters_polish, c('q', 'x', 'v'))
letters_polish <- sort(letters_polish)


names(letters_polish) <- c(letters_polish[29:32], letters_polish[1:28])
inter <- c('.', ',', '\n', '(', ')', ' ')
names(inter) <- inter
letters_all <- c(letters_polish, inter)

text_birth <- "Tydłprf żtpbńś ątęboęzpb hępńy słąś ął łoębjątęboęzp opłnkę żbhofroty. Nńtbhbf słąc ął sśołgębdł ę nńtbuńłżtśopbdł kyżtśkęy.
Sbu grhgc ebńźyżęykz, gpmńy fbop nłą głgyńągz ę sńtra fz ął słąś. Nyńt nńtbt nęca jękrp ę łźobńsrf fyg gsęypbg oęc ńłtsęfy.
Sśfjęf ńłtsękęcpś gsęypbg (jłwky dł łołźkł tynyńtśa ął pńtbże ńytś) ę sńtra ąsyątębóżęy gsęypgms ghępłńęę (kęb nłjśh fbf t ebńźypz). Nłżtbgyf żł kyfjkębf pńtś jękrpś ę sśjębotyf.
Kyopcnkęb ąłąyf ąsęb ńtbżtś tb oiłężtgy ę łźobńsrf jębotykękc.
Ojyżtkbdł.
Sotśopgębdł kyfhbnotbdł!

Yhężfy ę Jężeyi

N.O.

Ghrżt ął otśćńr pł Psłfb rńłątękś."

paste0(letters_all[strsplit(tolower(text_birth), '')[[1]]], collapse = '')


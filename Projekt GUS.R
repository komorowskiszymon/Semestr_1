#Wykorzystywane biblioteki

library(xlsx)
library(tidyverse)

#Wczytujemy dane z pliku excel - wczeœniej ju¿ zosta³y przejrzane i w pewien sposób uporz¹dkowane

dane <- read.xlsx('Ceny 2006 - 2019.xlsx', sheetIndex = 1)

#Opisanie bardziej przejrzystych na?w kolumny dla kazdego roku

#Rok 2006
names(dane)[1]<-paste0("Region")
names(dane)[2:7]<-paste0("2006; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia mes?iego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[8:13]<-paste0("2006; Luty; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie?obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[14:19]<-paste0("2006; Marzec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane"?"Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[20:25]<-paste0("2006; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty ?êskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[26:31]<-paste0("2006; Maj; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                        ? "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[32:37]<-paste0("2006; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                        ?                 "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[38:43]<-paste0("2006; Lipiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
          ?                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[44:49]<-paste0("2006; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna miel?na",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[50:55]<-paste0("2006; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Kaw? naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[56:61]<-paste0("2006; PaŸdzernik; ",c("Ry¿","B?³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[62:67]<-paste0("2006; Listop?d; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[68:73]<-past?0("2006; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
#Rok 200?
names(dane)[74:79]<-paste0("2007; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                            "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                            "Ciep³a woda z? metr szeœcienny"))
names(dane)[80:85]<-paste0("2007; Luty; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "C?ep³a woda za metr szeœcienny"))
names(dane)[86:91]<-paste0("2007; Marzec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                             "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                           ?                 "Ciep³a woda za metr szeœcienny"))
names(dane)[92:97]<-paste0("2007; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
   ?                                           "Ciep³a woda za metr szeœcienny"))
names(dane)[98:103]<-paste0("2007; Maj; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuw?a meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[104:109]<-paste0("2007; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórz?ne","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[110:115]<-paste0("2007; Lipiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          ?  "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[116:121]<-paste0("2007; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                  ?                            "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[122:127]<-paste0("2007; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna ?ielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[128:133]<-paste0("2007; PaŸdzernik; ",c("Ry¿","B?³ka pszenna","Kawa naturalna mielona",
                                                 "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Ciep³a woda za metr szeœcienny"))
names(dane)[134:139]<-past?0("2007; Listopad; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny")?
names(dane)[140:145]<-paste0("2007; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep??a woda za metr szeœcienny"))
#Rok 2008
names(dane)[146:151]<-paste0("2008; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                            "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                  ?                         "Ciep³a woda za metr szeœcienny"))
names(dane)[152:157]<-paste0("2008; Luty; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
  ?                                       "Ciep³a woda za metr szeœcienny"))
names(dane)[158:163]<-paste0("2008; Marzec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                             "Pó³buty mêskie skórzane","Podzelowanie o?uwia meskiego",
                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[164:169]<-paste0("2008; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie?skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[170:175]<-paste0("2008; Maj; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                       ?  "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[176:181]<-paste0("2008; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                     ?                         "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[182:187]<-paste0("2008; Lipiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielo?a",
                                             "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[188:193]<-paste0("2008; Sierpieñ; ",c("Ry¿","Bu³ka pszenn?","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[194:199]<-paste0("2008; Wrzes?eñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[2?0:205]<-paste0("2008; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                                 "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Ciep³a woda z? metr szeœcienny"))
names(dane)[206:211]<-paste0("2008; Listopad; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                 ?             "Ciep³a woda za metr szeœcienny"))
names(dane)[212:217]<-paste0("2008; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
     ?                                         "Ciep³a woda za metr szeœcienny"))
#Rok 2009
names(dane)[218:223]<-paste0("2009; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                            "Pó³buty mêskie skórzane","Po?zelowanie obuwia meskiego",
                                            "Ciep³a woda za metr szeœcienny"))
names(dane)[224:229]<-paste0("2009; Luty; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêsk?e skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[230:235]<-paste0("2009; Marzec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                       ?     "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[236:241]<-paste0("2009; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
               ?                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[242:247]<-paste0("2009; Maj; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mi?lona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[248:253]<-paste0("2009; Czerwiec; ",c("Ry¿","Bu³ka pszenna",?Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[254:259]<-paste0("2009; Lipiec; ?,c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                             "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[260:265]<-?aste0("2009; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcien?y"))
names(dane)[266:271]<-paste0("2009; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "?iep³a woda za metr szeœcienny"))
names(dane)[272:277]<-paste0("2009; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                                 "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                ?                                "Ciep³a woda za metr szeœcienny"))
names(dane)[278:283]<-paste0("2009; Listopad; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuw?a meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[284:289]<-paste0("2009; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie ?kórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
#Rok 2010
names(dane)[290:295]<-paste0("2010; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                          ?                 "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                            "Ciep³a woda za metr szeœcienny"))
names(dane)[296:301]<-paste0("2010; Luty; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
        ?                                 "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[302:307]<-paste0("2010; Marzec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mi?lona",
                                             "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[308:313]<-paste0("2010; Kwiecieñ; ",c("Ry¿","Bu³ka psz?nna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[314:319]<-paste0("2010; Ma?; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[320:325]<-pas?e0("2010; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"?)
names(dane)[326:331]<-paste0("2010; Lipiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                             "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Ciep³a wo?a za metr szeœcienny"))
names(dane)[332:337]<-paste0("2010; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                             ?                 "Ciep³a woda za metr szeœcienny"))
names(dane)[338:343]<-paste0("2010; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
 ?                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[344:349]<-paste0("2010; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                                 "Pó³buty mêskie skórzane","?odzelowanie obuwia meskiego",
                                                 "Ciep³a woda za metr szeœcienny"))
names(dane)[350:355]<-paste0("2010; Listopad; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                            ?  "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[356:361]<-paste0("2010; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                ?                              "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
#Rok 2011
names(dane)[362:367]<-paste0("2011; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Kawa?naturalna mielona",
                                            "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                            "Ciep³a woda za metr szeœcienny"))
names(dane)[368:373]<-paste0("2011; Luty; ",c("Ry¿","Bu??ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda za metr szeœcienny"))
names(dane)[374:379]<-paste0("2011; Marze?; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                             "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Ciep³a woda za metr szeœcienny"))
names(dane)[380:385?<-paste0("2011; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœc?enny"))
names(dane)[386:391]<-paste0("2011; Maj; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                          "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Ciep³a woda ?a metr szeœcienny"))
names(dane)[392:397]<-paste0("2011; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                ?              "Ciep³a woda za metr szeœcienny"))
names(dane)[398:403]<-paste0("2011; Lipiec; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                             "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
        ?                                    "Ciep³a woda za metr szeœcienny"))
names(dane)[404:409]<-paste0("2011; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie ?buwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[410:415]<-paste0("2011; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                                               "Pó³buty mês?ie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[416:421]<-paste0("2011; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona",
                             ?                   "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Ciep³a woda za metr szeœcienny"))
names(dane)[422:427]<-paste0("2011; Listopad; ",c("Ry¿","Bu³ka pszenna","Kawa naturalna mielona?,
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
names(dane)[428:433]<-paste0("2011; Grudzieñ; ",c("Ry¿","Bu³ka psze?na","Kawa naturalna mielona",
                                               "Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Ciep³a woda za metr szeœcienny"))
#Rok 2012
names(dane)[434:441]<-paste0(?2012; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                            "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                            "Podzelowanie obuwia meskiego",?Ciep³a woda za metr szeœcienny"))
names(dane)[442:449]<-paste0("2012; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                           "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
               ?                           "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[450:457]<-paste0("2012; Marzec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejsto?y damskie - 15 den","Pó³buty mêskie skórzane",
                                             "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[458:465]<-paste0("2012; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa natur?lna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                               "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[466:473]<-paste?("2012; Maj; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                          "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                          "Podzelowanie obuwia meskiego","Ciep³? woda za metr szeœcienny"))
names(dane)[474:481]<-paste0("2012; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
             ?                                 "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[482:489]<-paste0("2012; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                              ?Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                              "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[490:497]<-paste0("2012; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Ka?a naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                               "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[498:505?<-paste0("2012; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                               "Podzelowanie ?buwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[506:513]<-paste0("2012; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêsk?e skórzane",
                                                 "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[514:521]<-paste0("2012; Listopad; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
               ?                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                               "Podzelowanie obuwia meskiego","Ciep³a woda za metr szeœcienny"))
names(dane)[522:529]<-paste0("2012; Grudzieñ; ",c("Ry¿","?u³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane",
                                               "Podzelowanie obuwia meskiego","Ciep³a woda za metr ?zeœcienny"))
#Rok 2013
names(dane)[530:538]<-paste0("2013; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia m?skiego",
                                            "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[539:547]<-paste0("2013; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
           ?                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                           "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[5?8:556]<-paste0("2013; Marzec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                            ?                "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[557:565]<-paste0("2013; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                            ?  "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[566:574]<-paste0("2013; Ma?; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                          "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Centralne ogrzew?nie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[575:583]<-paste0("2013; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó??buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[584:592]<-paste0("2013; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œ?ietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr?kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[593:601]<-paste0("2013; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","P?dzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[602:610]<-paste0("2013; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa natu?alna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda ?a metr szeœcienny"))
names(dane)[611:619]<-paste0("2013; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obu?ia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[620:628]<-paste0("2013; Listopad; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona?,
                                                "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr sze??cienny"))
names(dane)[629:637]<-paste0("2013; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego"?
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
#Rok 2014
names(dane)[638:646]<-paste0("2014; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
 ?                                           "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))?names(dane)[647:655]<-paste0("2014; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                           "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                  ?                        "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[656:664]<-paste0("2014; Marzec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                      ?      "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[665:673]<-paste0("2014; ?wiecieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               ?Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[674:682]<-paste0("2014; Maj; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                          "Rejstopy damskie - 15 d?n","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[683:691]<-paste0("2014; Czerwiec; ",c("Ry¿","Bu³ka pszenna?,"Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk.?za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[692:700]<-paste0("2014; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane?,"Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[701:709]<-paste0("2014; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa na?uralna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a wod? za metr szeœcienny"))
names(dane)[710:718]<-paste0("2014; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwi? meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[719:727]<-paste0("2014; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",?                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr sze??cienny"))
names(dane)[728:736]<-paste0("2014; Listopad; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",?                                                "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[737:745]<-paste0("2014; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
            ?                                    "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
#R?k 2015
names(dane)[746:754]<-paste0("2015; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
      ?                                      "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[755:763]<-paste0("2015; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                          ?                "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                           "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[764:772]<-paste0?"2015; Marzec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                           ? "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[773:781]<-paste0("2015; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy da?skie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[782:790]<-paste0("2015; Maj; ",c("Ry¿","B?³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                          "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Centralne ogrzewanie lok. miesz?. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[791:799]<-paste0("2015; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie sk??rzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[800:808]<-paste0("2015; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","K?wa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a w?da za metr szeœcienny"))
names(dane)[809:817]<-paste0("2015; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obu?ia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[818:826]<-paste0("2015; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",?                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcie?ny"))
names(dane)[827:835]<-paste0("2015; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
?                                                "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[836:844]<-paste0("2015; Listopad; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
            ?                                   "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
name?(dane)[845:853]<-paste0("2015; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
             ?                                   "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
#Rok 2016
names(dane)[854:862]<-paste0("2016; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                ?                            "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[86?:871]<-paste0("2016; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                           "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                 ?         "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[872:880]<-paste0("2016; Marzec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstop? damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[881:889]<-paste0("2016; Kwiecieñ; ",c("?y¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrz?wanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[890:898]<-paste0("2016; Maj; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                          "Rejstopy damskie - 15 den","Pó³buty mê?kie skórzane","Podzelowanie obuwia meskiego",
                                          "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[899:907]<-paste0("2016; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%?,"Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","?iep³a woda za metr szeœcienny"))
names(dane)[908:916]<-paste0("2016; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie?obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[917:925]<-paste0("2016; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona?,
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœc?enny"))
names(dane)[926:934]<-paste0("2016; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
  ?                                            "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[935:943]<-paste0("2016; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
              ?                                  "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
name?(dane)[944:952]<-paste0("2016; Listopad; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
              ?                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[953:961]<-paste0("2016; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                           ?                     "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
#Rok 2017
names(d?ne)[962:970]<-paste0("2017; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                     ?                       "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[971:979]<-paste0("2017; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                         ? "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                           "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[980:988]<-paste0("2017; Marzec;?",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne og?zewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[989:997]<-paste0("2017; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den"?"Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[998:1006]<-paste0("2017; Maj; ",c("Ry¿","Bu³ka pszenna",?Œmietana 18%","Kawa naturalna mielona",
                                          "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Centralne ogrzewanie lok. mieszk. za metr kw.?,"Ciep³a woda za metr szeœcienny"))
names(dane)[1007:1015]<-paste0("2017; Czerwiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Pod?elowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1016:1024]<-paste0("2017; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa natura?na mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za met? szeœcienny"))
names(dane)[1025:1033]<-paste0("2017; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia mesk?ego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1034:1042]<-paste0("2017; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
     ?                                         "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))?names(dane)[1043:1051]<-paste0("2017; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
    ?                                            "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1052:1060]<-paste0("2017; Listopad; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
              ?                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(?ane)[1061:1069]<-paste0("2017; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
             ?                                   "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
#Rok 2018
names(dane)[1070:1078]<-paste0("2018; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
              ?                              "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[?079:1087]<-paste0("2018; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                           "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                             ?             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1088:1096]<-paste0("2018; Marzec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "R?jstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1097:1105]<-paste0("2018; Kwiecie??; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centra?ne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1106:1114]<-paste0("2018; Maj; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                          "Rejstopy damskie - 15 den","?ó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                          "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1115:1123]<-paste0("2018; Czerwiec; ",c("Ry¿","Bu³ka pszenna","??mietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za?metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1124:1132]<-paste0("2018; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane"?"Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1133:1141]<-paste0("2018; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa n?turalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a wo?a za metr szeœcienny"))
names(dane)[1142:1150]<-paste0("2018; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie ob?wia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1151:1159]<-paste0("2018; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna miel?na",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za met? szeœcienny"))
names(dane)[1160:1168]<-paste0("2018; Listopad; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
                                                "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia mes?iego",
                                                "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1169:1177]<-paste0("2018; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona",
   ?                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcie?ny"))
#Rok 2019
names(dane)[1178:1187]<-paste0("2019; Styczeñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                             "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane"?"Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1188:1197]<-paste0("2019; Luty; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa natur?lna mielona","Jaja kurze (wolny wybieg)",
                                           "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                           "Centralne ogrzewanie lok. mieszk. za metr?kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1198:1207]<-paste0("2019; Marzec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                             "Rejstopy damskie - 15 den","P??³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                             "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1208:1217]<-paste0("2019; Kwiecieñ; ",c("Ry¿","Bu³ka pszenna"?"Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                              "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                              "Centraln? ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1218:1227]<-paste0("2019; Maj; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                         "Rej?topy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                         "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1228:1237]<-paste0("2019; Czerwiec; ",c?"Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                              "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                 ?            "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1238:1247]<-paste0("2019; Lipiec; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                    ?                         "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                              "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1248?1257]<-paste0("2019; Sierpieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego?,
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1258:1267]<-paste0("2019; Wrzesieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurz? (wolny wybieg)",
                                               "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                               "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a wo?a za metr szeœcienny"))
names(dane)[1268:1277]<-paste0("2019; PaŸdzernik; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                                  "Rejstopy damskie - 15 den","Pó³buty ?êskie skórzane","Podzelowanie obuwia meskiego",
                                                  "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1278:1287]<-paste0("2019; Listopad; ",c("Ry¿","Bu³ka pszenna","??mietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                                 "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Cent?alne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))
names(dane)[1288:1297]<-paste0("2019; Grudzieñ; ",c("Ry¿","Bu³ka pszenna","Œmietana 18%","Kawa naturalna mielona","Jaja kurze (wolny wybieg)",
                                    ?            "Rejstopy damskie - 15 den","Pó³buty mêskie skórzane","Podzelowanie obuwia meskiego",
                                                 "Centralne ogrzewanie lok. mieszk. za metr kw.","Ciep³a woda za metr szeœcienny"))



#Utworzenie tabel dla p?szczególnych produktów

ryz <-select(dane, c("2006; Styczeñ; Ry¿","2006; Luty; Ry¿","2006; Marzec; Ry¿","2006; Kwiecieñ; Ry¿","2006; Maj; Ry¿","2006; Czerwiec; Ry¿",
                     "2006; Lipiec; Ry¿","2006; Wrzesieñ; Ry¿","2006; PaŸdzernik; Ry¿","20?6; Listopad; Ry¿","2006; Grudzieñ; Ry¿",
                     "2007; Styczeñ; Ry¿","2007; Luty; Ry¿","2007; Marzec; Ry¿","2007; Kwiecieñ; Ry¿","2007; Maj; Ry¿","2007; Czerwiec; Ry¿",
                     "2007; Lipiec; Ry¿","2007; Wrzesieñ; Ry¿","2007; PaŸ?zernik; Ry¿","2007; Listopad; Ry¿","2007; Grudzieñ; Ry¿",
                     "2008; Styczeñ; Ry¿","2008; Luty; Ry¿","2008; Marzec; Ry¿","2008; Kwiecieñ; Ry¿","2008; Maj; Ry¿","2008; Czerwiec; Ry¿",
                     "2008; Lipiec; Ry¿","2008; Wrzesieñ? Ry¿","2008; PaŸdzernik; Ry¿","2008; Listopad; Ry¿","2008; Grudzieñ; Ry¿",
                     "2009; Styczeñ; Ry¿","2009; Luty; Ry¿","2009; Marzec; Ry¿","2009; Kwiecieñ; Ry¿","2009; Maj; Ry¿","2009; Czerwiec; Ry¿",
                     "2009; Lipiec; Ry¿?,"2009; Wrzesieñ; Ry¿","2009; PaŸdzernik; Ry¿","2009; Listopad; Ry¿","2009; Grudzieñ; Ry¿",
                     "2010; Styczeñ; Ry¿","2010; Luty; Ry¿","2010; Marzec; Ry¿","2010; Kwiecieñ; Ry¿","2010; Maj; Ry¿","2010; Czerwiec; Ry¿",
                     "?010; Lipiec; Ry¿","2010; Wrzesieñ; Ry¿","2010; PaŸdzernik; Ry¿","2010; Listopad; Ry¿","2010; Grudzieñ; Ry¿",
                     "2011; Styczeñ; Ry¿","2011; Luty; Ry¿","2011; Marzec; Ry¿","2011; Kwiecieñ; Ry¿","2011; Maj; Ry¿","2011; Czerwiec; Ry¿",
     ?               "2011; Lipiec; Ry¿","2011; Wrzesieñ; Ry¿","2011; PaŸdzernik; Ry¿","2011; Listopad; Ry¿","2011; Grudzieñ; Ry¿",
                     "2012; Styczeñ; Ry¿","2012; Luty; Ry¿","2012; Marzec; Ry¿","2012; Kwiecieñ; Ry¿","2012; Maj; Ry¿","2012; Czer?iec; Ry¿",
                     "2012; Lipiec; Ry¿","2012; Wrzesieñ; Ry¿","2012; PaŸdzernik; Ry¿","2012; Listopad; Ry¿","2012; Grudzieñ; Ry¿",
                     "2013; Styczeñ; Ry¿","2013; Luty; Ry¿","2013; Marzec; Ry¿","2013; Kwiecieñ; Ry¿","2013; Maj;?Ry¿","2013; Czerwiec; Ry¿",
                     "2013; Lipiec; Ry¿","2013; Wrzesieñ; Ry¿","2013; PaŸdzernik; Ry¿","2013; Listopad; Ry¿","2013; Grudzieñ; Ry¿",
                     "2014; Styczeñ; Ry¿","2014; Luty; Ry¿","2014; Marzec; Ry¿","2014; Kwiecieñ;?Ry¿","2014; Maj; Ry¿","2014; Czerwiec; Ry¿",
                     "2014; Lipiec; Ry¿","2014; Wrzesieñ; Ry¿","2014; PaŸdzernik; Ry¿","2014; Listopad; Ry¿","2014; Grudzieñ; Ry¿",
                     "2015; Styczeñ; Ry¿","2015; Luty; Ry¿","2015; Marzec; Ry¿"?"2015; Kwiecieñ; Ry¿","2015; Maj; Ry¿","2015; Czerwiec; Ry¿",
                     "2015; Lipiec; Ry¿","2015; Wrzesieñ; Ry¿","2015; PaŸdzernik; Ry¿","2015; Listopad; Ry¿","2015; Grudzieñ; Ry¿",
                     "2016; Styczeñ; Ry¿","2016; Luty; Ry¿","2?16; Marzec; Ry¿","2016; Kwiecieñ; Ry¿","2016; Maj; Ry¿","2016; Czerwiec; Ry¿",
                     "2016; Lipiec; Ry¿","2016; Wrzesieñ; Ry¿","2016; PaŸdzernik; Ry¿","2016; Listopad; Ry¿","2016; Grudzieñ; Ry¿",
                     "2017; Styczeñ; Ry¿","20?7; Luty; Ry¿","2017; Marzec; Ry¿","2017; Kwiecieñ; Ry¿","2017; Maj; Ry¿","2017; Czerwiec; Ry¿",
                     "2017; Lipiec; Ry¿","2017; Wrzesieñ; Ry¿","2017; PaŸdzernik; Ry¿","2017; Listopad; Ry¿","2017; Grudzieñ; Ry¿",
                     "2018; ?tyczeñ; Ry¿","2018; Luty; Ry¿","2018; Marzec; Ry¿","2018; Kwiecieñ; Ry¿","2018; Maj; Ry¿","2018; Czerwiec; Ry¿",
                     "2018; Lipiec; Ry¿","2018; Wrzesieñ; Ry¿","2018; PaŸdzernik; Ry¿","2018; Listopad; Ry¿","2018; Grudzieñ; Ry¿",
           ?         "2019; Styczeñ; Ry¿","2019; Luty; Ry¿","2019; Marzec; Ry¿","2019; Kwiecieñ; Ry¿","2019; Maj; Ry¿","2019; Czerwiec; Ry¿",
                     "2019; Lipiec; Ry¿","2019; Wrzesieñ; Ry¿","2019; PaŸdzernik; Ry¿","2019; Listopad; Ry¿","2019; Grudzieñ; ?y¿"))

#Tworzymy ramkê dany odwrotn¹ do podanej

dim(ryz)


#Tworzymy szeregi dynamiczne (czasowe)


ryz_polska = ts(ryz[1,], start = c(2006, 01), frequency = 12)
plot(ryz[1:12])

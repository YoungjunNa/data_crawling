#Bull imformation API parsing (Hanwoo)

#author: Youngjun Na
#Email: ruminoreticulum@gmail.com
#Github: https://github.com/YoungjunNa
#Date: 9/27/2017

bull_info<-function(KPN){
  #package
  require("XML")
  
  #import bull informations
  url1<-paste("http://hanwoori.nias.go.kr/openapi/brblInfoOk.jsp?dataType=xml&brblNo=","KPN",KPN,sep="")
  xmlfile1<-xmlParse(url1)
  xmltop1<-xmlRoot(xmlfile1)
  get_inform<-xmlToDataFrame(getNodeSet(xmlfile1,"//item"),stringsAsFactors=FALSE)
  
  get_inform<-get_inform[-c(1,2,3,10,11,12,13,14,20,22,23,24,25,26,29,31,38,39,40,41,43,45,53,54)]
  
  #print
  print(get_inform)
}

bull_info(1080)

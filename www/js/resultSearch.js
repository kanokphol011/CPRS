var xmlhttp = new XMLHttpRequest();
var urlSearchParams = URL.searchParams;
let params = (new URL(document.location)).searchParams;
let tid = params.get("id");
let yearfrom = parseInt(params.get("year")); 
let yearto = parseInt(params.get("to"));
let options = {};
var url='';
var name,lastname,meet,issuse,total,to,you,initials;
var authorAllurl = new Array;
$(function(){
    // is the string "id"
    
     url ='https://staffcoc.herokuapp.com/getUser/';
    xmlhttp.open("GET", url, false);
    xmlhttp.send();
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
    {
         var result = xmlhttp.responseText;
         var jsResult = JSON.parse(result);
         
         var c = jsResult["staffcoc"].length;
         var r = "";
         for(i =0;i<c;i++){
             to=jsResult["staffcoc"][i]["id"];
            // console.log(to);
            passs = url+'/'+to;
            
            if(parseInt(jsResult["staffcoc"][i]["id"])===parseInt(tid)){
              
               name =jsResult["staffcoc"][i]["staffName"].toLowerCase();
               lastname = jsResult["staffcoc"][i]["staffLastName"].toLowerCase();
               initials = jsResult["staffcoc"][i]["initials"].toLowerCase();
              r += "<b>"+ jsResult["staffcoc"][i]["position"] + "</b> <b> "+jsResult["staffcoc"][i]["staffName"]+"</b> <b>"+jsResult["staffcoc"][i]["staffLastName"]+"</b></a></br>";
              
              //return pop;  
            }
        }
        console.log(tid+1);
        
        document.getElementById("Name").innerHTML = r+'<h4>('+yearfrom+'&nbsp;-&nbsp;'+yearto+')';
    
    }
})

$(function(){
    var x ='https://api.elsevier.com/content/search/scopus?query=AUTHLASTNAME';
    var y='&apiKey=185547eee67ed06e5e817a0f227d23fe';
    url =x+'('+ lastname +')%20AND%20AUTHFIRST(' +initials+')AND%20PUBYEAR%20>%20'+yearfrom+'%20AND%20PUBYEAR%20<%20'+yearto+1+''+y;
    if(yearfrom==yearto){
        url =x+'('+ lastname +')%20AND%20AUTHFIRST(' +initials+')AND%20PUBYEAR%20=%20'+yearfrom+''+y;
    }
    console.log(url);
    xmlhttp.open("GET", url, false);
    xmlhttp.send();
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
    {
         var result = xmlhttp.responseText;
         var jsResult = JSON.parse(result);
         
         var c = jsResult["search-results"]["entry"].length;
        you='';
         for(i =0;i<c;i++){
        
           meet =jsResult["search-results"]["entry"][i]["link"][2]["@href"];
          // console.log(meet);
            you += i+1 +". <b><a href="+meet+">"+ jsResult["search-results"]["entry"][i]["dc:title"] + "</a></b>,<i> "+jsResult["search-results"]["entry"][i]["prism:publicationName"]+"</i>, "+jsResult["search-results"]["entry"][i]["prism:coverDisplayDate"];        
        
            authorAllurl[i] = jsResult["search-results"]["entry"][i]["prism:url"];
            var urlAuthor = authorAllurl[i]+'?field=authors&apiKey=185547eee67ed06e5e817a0f227d23fe&httpAccept=application%2Fjson';
            
                   xmlhttp.open("GET", urlAuthor, false);
                   xmlhttp.send();
                   if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
                       you += "<h5><b class='auth'>Authors : </b>";
                    var resultA = xmlhttp.responseText;
                    var jsResultA = JSON.parse(resultA);
                    var datastaff = jsResultA["abstracts-retrieval-response"]["authors"]["author"].length;

                    for(a=0;a<datastaff;a++){
                        if(a>=0 && a<(datastaff-1)){
                            you += jsResultA["abstracts-retrieval-response"]["authors"]["author"][a]["ce:indexed-name"]+",";
                        }else if(a==(datastaff-1)){
                            you += jsResultA["abstracts-retrieval-response"]["authors"]["author"][a]["ce:indexed-name"]+"</h5>";
                        }
                    }
                   }
                   you += "<p> Number of Citations: "+ jsResult["search-results"]["entry"][i]["citedby-count"]+"</p><br><br>";
        
        }
         document.getElementById("showresultStaff").innerHTML = you;
         //document.getElementById("NumberofArticles").innerHTML = total;
    }else {
        var text = "none" ;
        document.getElementById("showresultStaff").innerHTML = text;
    }
})



function myFunction() {
 

        xmlhttp.open("GET", url, false);
        xmlhttp.send();
        //console.log(DateFrom)
        
       var url = "reportStaffs.htm?id="+tid+"&initials="+initials+"&lastname="+lastname+"&year="+yearfrom+"&to="+yearto;
   window.location.assign(url);
    // });

}
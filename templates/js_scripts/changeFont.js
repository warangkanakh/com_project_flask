
var get_result = document.getElementById("output");
var text_result = get_result.innerHTML
if(text_result=="0"){
    get_result.innerHTML("มีแนวโน้มเป็นข่าวปลอม")
    get_result.style.color = "#FF4500";
}
else{
    get_result.innerHTML("มีแนวโน้มเป็นข่าวจริง")
    get_result.style.color ="#32CD32"
    
}
        
         
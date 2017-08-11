
//Fri Aug 30 2013 4:36 pm
console.log(formatAMPM(new Date()));

//using your function (passing in date)
function formatAMPM(date) {
    
    var hours = date.getHours();

    var days = date.getDay();
    
    var minutes = date.getMinutes();
    
    var ampm = hours >= 12 ? 'pm' : 'am';
   
    hours = hours % 12;
   
    hours = hours ? hours : 12; 
   
    minutes = minutes < 10 ? '0'+ minutes : minutes;
  
    
    var time = hours + ':' + minutes + ' ' + ampm;
  
  
    var match = date.toString().match(/\w{3} \w{3} \d{1,2} \d{4}/);
  
    
    return match[0] + ' ' + time;
}
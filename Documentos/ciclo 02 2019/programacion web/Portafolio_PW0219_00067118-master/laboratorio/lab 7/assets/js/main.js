var parseLateSwitch = (value) =>{

    if(value){
        return "Tarde :("
    }
    return "a tiempo"
}


function addRow(carnet,schedule,late,tbody){

   var newRow = document.createElement("tr");
   var date = new Date();
   newRow.innerHTML =
   `<td><b>${carnet}</b></td>
   <td><b>${schedule}</b></td>
   <td><b>${date.toLocaleDateString()}</b></td>
   <td><b>${late}</b></td>`

   tbody.appendChild(newRow);


};

window.onload = function(){

    var submit_btn =document.querySelector("#submit_btn");
    var carnet_field= document.querySelector("#carnet_field");
    var schedule_field = document.querySelector("#schedule_field");
    var late_switch = document.querySelector("#late_switch");
    var tBody = document.querySelector("#table_body");
    
    var carnetRegex = new RegExp('[0-9]{8}');

    console.log(submit_btn);

    submit_btn.addEventListener("click", ()=>{

    var carnet = carnet_field.value;
    var schedule = schedule_field.options[schedule_field.selectedIndex].text;
    var late = parseLateSwitch(late_switch.checked); 
    
    if(carnetRegex.test(carnet)){
    addRow(carnet,schedule,late,tBody);   
    }else{
        alert("Formato no valido")
    }

    });

    carnet_field.addEventListener("keyup", (event)=>{
     //console.log(event.keyCode);
     
     var carnet = carnet_field.value;
     if(carnetRegex.test(carnet)){
         submit_btn.disabled= false;
     }else{
         submit_btn.disabled= true;
     }


    })


}
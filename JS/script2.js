function buttonClick() {
	 var check1 = document.getElementById('x1').value;
	 var check2 = document.getElementById('x2').value;
	 if(!check1 || !check2){
		 alert("В полях х1 и х2 пусто");
		 return;
	 }
	 var x1 = parseInt(check1);
	 var x2 = parseInt(check2);
	 
	 if(Number.isNaN(x1) || Number.isNaN(x2)){
		 alert("В полях х1 и х2 должны быть введены числовые значения.");
	     }
		 else {
	     var resultDiv = document.getElementById('result');
	     resultDiv.innerHTML=("x1+x2= " +(x1+x2));
		 if (document.getElementById('dot1').checked){
		     var sum=0;
		     for (var i=Math.min(x1,x2); Math.max(x1,x2)>=i; i++){
			 sum += i;
		     }
		     var resultDiv = document.getElementById('result2');
	         resultDiv.innerHTML=("Сумма от x1 до x2: " +sum);
		 } else {
			 var proiz=1;
		     for (var i=Math.min(x1,x2); Math.max(x1,x2)>=i; i++){
			 proiz *= i;
		     }
			 var resultDiv = document.getElementById('result2');
	         resultDiv.innerHTML=("Произведение от x1 до x2: " +proiz);
		 }
	 }
}
function buttonClickClear(){
	 document.getElementById('x1').value = null;
	 document.getElementById('x2').value = null;
}
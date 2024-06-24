//3.1
function change(){
	document.getElementById('change').innerHTML = 'I am Mary'
}

//3.2 
function register(){
	const fname = document.getElementById('fname').value
	const lname = document.getElementById('lname').value
	alert('welcome '+fname+' '+lname+'!')
}
//3.3
function show(){
	const sele = document.getElementById('mySelect').value
	if(sele == 'red') alert('you chose red')
	else if(sele == 'green') alert('you chose green')
	else if(sele == 'blue') alert('you chose blue')
	else alert('you chose white')
}
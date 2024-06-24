//2.1
function day(){
	const today = new Date()
	const dd = today.getDate()
	const mm = today.getMonth() + 1
	const yyyy = today.getFullYear()
	return (dd+'-'+mm+'-'+yyyy)
}
alert(day())

//2.2
function leap(y){
	if(y%4==0 && y%100!=0 || y%400==0){
		return true
	}
	return false
}
alert(leap(2000))
//2.3
let date_1 = new Date('12/25/2023');
let date_2 = new Date();

const days = (date_1, date_2) =>{
    let difference = date_1.getTime() - date_2.getTime();
    let TotalDays = Math.ceil(difference / (1000 * 3600 * 24));
    return TotalDays;
}
console.log(days(date_1, date_2) +" days to Xmas");
//2.4
const check = (num) =>{
	if(num >= 10 && num <=99){
		return true
	}
	return false
}
console.log(check(861))
//2.5
const sum = (n1, n2) =>{
	if (n1 == n2) return 2*(n1+n2)
	else return (n1+n2)
}
console.log(sum(4,4))
//2.6
const ccc = (n1, n2) =>{
	if(n1==10 || n2==10 || n1+n2==100) return true
	return false
}
console.log(ccc(88,12))
//2.7
const ddd = (n) =>{
	if(n>0 && n%5==0） return true
	return false
}
console.log(ddd(23))
//2.8
const mask = (num) =>{
	left = num % 100
	new_num = 'xx'+ String(left)
	return new_num
}
console.log(mask(1234))
//2.9
const swap = (str) =>{
	let new_str = []
	new_str[0] = str[str.length-1]
	for (let i = 1; i<str.length-1; i++){
		new_str[i] = str[i]
	}
	new_str[str.length-1] = str[0]
	new_str = new_str.join('')
	return new_str
}
console.log(swap('abcde'))

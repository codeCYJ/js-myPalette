function cssChange1(){ //credit card btn을 눌렀을때 
  document.getElementById('creditcard').style.border="2px solid rgb(109, 199, 194)";  //border 색 주입
  document.getElementById('creditcard').style.backgroundColor = "rgba(188, 240, 237, 0.1)"; //background색 주입
  //그 외 버튼 border와 background 색 제거
  document.getElementById('giftcard').style.border="none"; 
  document.getElementById('giftcard').style.backgroundColor = "white";
  document.getElementById('paypal').style.border="none";
  document.getElementById('paypal').style.backgroundColor = "white";
}
function cssChange2(){ //gift card btn을 눌렀을때
  document.getElementById('giftcard').style.border="2px solid rgb(109, 199, 194)";
  document.getElementById('giftcard').style.backgroundColor = "rgba(188, 240, 237, 0.1)";
  //그 외 버튼 border와 background 색 제거
  document.getElementById('creditcard').style.border="none";
  document.getElementById('creditcard').style.backgroundColor = "white";
  document.getElementById('paypal').style.border="none";
  document.getElementById('paypal').style.backgroundColor = "white";
}
function cssChange3(){ //paypal btn을 눌렀을때
  document.getElementById('paypal').style.border="2px solid rgb(109, 199, 194)";
  document.getElementById('paypal').style.backgroundColor = "rgba(188, 240, 237, 0.1)";
  //그 외 버튼 border와 background 색 제거
  document.getElementById('giftcard').style.border="none";
  document.getElementById('giftcard').style.backgroundColor = "white";
  document.getElementById('creditcard').style.border="none";
  document.getElementById('creditcard').style.backgroundColor = "white";
}


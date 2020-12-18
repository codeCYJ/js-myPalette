var bigPic = document.querySelector(".img-main"); // 큰사진
var smallPic = document.querySelectorAll(".sub-small");  // 작은사진

for(var i = 0; i < smallPic.length; i++){ 
  smallPic[i].addEventListener("click", changePic); // 이벤트처리
}
/* 
onclick으로 하면 하나의 요소에 하나의 이벤트만 사용가능
smallPic[i].onclick = changepic;
*/

function changePic(){ // 사진 바꾸는 함수
  var smallPicAttribute = this.getAttribute("src");
  bigPic.setAttribute("src", smallPicAttribute);
}


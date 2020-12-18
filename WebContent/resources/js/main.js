const selectElement = (Element) => document.querySelector(Element);

console.log('bafsagsdg')
selectElement('.mobile-menu').addEventListener('click', ()=>{
    selectElement('header').classList.toggle('active');
});

selectElement('.nav-link-bag').addEventListener('click',() =>{
    selectElement('.nav-link-bag__list').classList.toggle('seelist');
});
/* 큰화면 장바구니 리스트*/
const toggleBtn4 = document.querySelector(".bagListContents");
/* 작은화면 장바구니 리스트*/
const toggleBtn3 = document.querySelector(".hide2");
/* 큰화면 장바구니 리스트 버튼 */
const toggleBtn1 = document.querySelector('.nav-link-bag1'); 
/* 작은화면 장바구니 리스트 버튼 */
const toggleBtn2 = document.querySelector('.nav-link-bag2'); 

const menu = document.querySelector('.nav-link-bag__list');

/* 큰화면일때 장바구니 눌렀을 때  */
toggleBtn1.addEventListener('click',()=>{
    toggleBtn4.classList.toggle('active3');
});

/* 작은화면일때 장바구니 눌렀을 때  */
toggleBtn2.addEventListener('click',()=>{
    menu.classList.toggle('seelist');
    toggleBtn3.classList.toggle('active2');
});

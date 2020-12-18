const toggleBtn = document.querySelector(".change-btn");
    const toggleBtn2 = document.querySelector(".change-cancel");
    const toggleBtn3 = document.querySelector(".apear-tag");
    const toggleBtn4 = document.querySelector(".email-on");
    const toggleBtn5 = document.querySelector(".change-btn3")
    toggleBtn.addEventListener("click", ()=>{
      toggleBtn3.classList.add("activity");
      
      
    })

    toggleBtn2.addEventListener("click",()=>{
      toggleBtn3.classList.remove("activity");



    }) 
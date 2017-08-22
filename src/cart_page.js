document.addEventListener('DOMContentLoaded', (e) => {
    getUserCart();
    
});

let templateCount = 0;

function getUserCart() {
    const template = document.querySelector(".cart_list");
    let userCart = window.localStorage.userCart;
    userCart = JSON.parse(userCart);

    userCart.forEach((el, index) => {
        
        XHR.post(el.productApiUrl, (e) => {
            el.productDetail = JSON.parse(e.target.responseText);
            
            let i;
            for(i=0;i<el.productList.length;i++) {
                el.productList[i].material_name = el.productDetail[i].material_name;
                el.productDetail[i].volume = el.productList[i].volume;
            }
            templateCount++;

            if (templateCount == userCart.length) {
                const theTemplateScript = document.querySelector("#user_cart_list_template").innerHTML;
                const theTemplate = Handlebars.compile(theTemplateScript);
                const theCompiledHtml = theTemplate(userCart);
                template.innerHTML = theCompiledHtml;

                //세션에 저장
                sessionStorage.setItem("userCart", JSON.stringify(userCart));

                addEvent();
                setTotalPrice();
            }
        })
    })
}

function addEvent() {
    document.querySelector(".cart_list").addEventListener("click", Handler);
}


function Handler(e) {
    if (e.target.tagName == "A") {
        const recipeTitle = e.target.innerHTML;
        let index = 0;
        const data = JSON.parse(sessionStorage.getItem("userCart"));
        
        const target = e.target.parentNode.parentNode.parentNode.parentNode;
        
        let divArr = document.getElementsByClassName("cart_list_item");
        divArr = Array.from(divArr);

        divArr.forEach((el, index) => {
            if (el == target) {
                
                e.target.href = `./recipe_popup.html?data=${encodeURIComponent(JSON.stringify(data[index]))}`;

            }
        });
    }
}


function setTotalPrice() {
    const data = JSON.parse(window.localStorage.getItem("userCart"));
    const target = document.querySelector(".section_body");
    let totalPrice = 0;

    data.forEach((e) => {
        totalPrice += e.recipePrice;
        console.log(totalPrice);
    })

}
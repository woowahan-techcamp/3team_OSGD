const Fling = {};
Fling.Data = {
    apiBaseURL: 'http://52.79.119.41/',
    get apiRecipes() {
        return Fling.Data.apiBaseURL + 'recipes';
    },
    get apiSeason() {
        return Fling.Data.apiBaseURL + 'season';
    }
}
Fling.Storage = {
    get userCart() {
        const userCart = JSON.parse(window.localStorage.getItem('userCart'));
        if (userCart == null)
            throw 'Usercart localstorage is empty';
        else 
            return userCart;
    },
    get myRefrige() {
        const myRefrige = JSON.parse(window.localStorage.getItem('myRefrige'));
        if (myRefrige == null)
            throw 'Myrefrige localstorage is empty';
        else 
            return myRefrige;
    },
    addUserCart: function(item) {
        let userCart =  JSON.parse(window.localStorage.getItem('userCart'));
        if (typeof item != 'object')
            throw 'Argument should be object.';
        if (userCart == null) {
            userCart =[];
            userCart.push(item);
        }
        else {
            userCart.push(item);
        }
        window.localStorage.setItem('userCart', JSON.stringify(userCart));
    },
    addMyRefrige: function(item) {
        let myRefrige =  JSON.parse(window.localStorage.getItem('myRefrige'));
        if (typeof item != 'object')
            throw 'Argument should be object.';
        if (myRefrige == null) {
            myRefrige =[];
            myRefrige.push(item);
        }
        else {
            myRefrige.push(item);
        }
        window.localStorage.setItem('myRefrige', JSON.stringify(myRefrige));
    },
    get clear() {
        window.localStorage.clear();
    }
};


Fling.API = {
    request: function(method, url, callback) {
        XHR.request(method, url, (e) => {
            let data = null;
            try {
                data = JSON.parse(e.target.responseText);
            }
            catch(e) {
                throw 'FLING_API_NOT_SEEMS_JSON';
            }
            callback(data);
        });
    },
    get: function(url, callback) {
        return this.request('get', url, callback);
    },
    post: function(url, callback) {
        return this.request('post', url, callback);
    }
}

Fling.Template = {
    tileViewSource: '<div class="recommend_content_wrap"><ul class="recommend_content_list"> {{#each this}}<li> <a href="./recipe_page.html?query_url={{url}}"><div class="recommend_content_list_node" style="background-image: url({{image}})"><div class="recommend_number"><p>{{inc @index}}</p></div></div> </a><dt><a href="./recipe_page.html?query_url={{url}}">{{subtitle}}</a></dt><dd>{{title}} | {{writer}}</dd></li> {{/each}}</ul></div>',
    slideViewSource: '<div class="recommend_content_wrap"><div class="slide_arrow prev"></div><div class="slide_arrow next"></div><div class="list_wrap"><ul class="recommend_content_list" style="--slide-number: 1"> {{#each this}}<li> <a href="./recipe_page.html?query_url={{url}}"><div class="recommend_content_list_node" style="background-image: url({{image}})"></div> </a><dt><a href="./recipe_page.html?query_url={{url}}">{{subtitle}}</a></dt><dd>{{title}} | {{writer}}</dd></li>{{/each}}</ul></div>',
    sectionSource: '<section class="main_section content {{id}}" id="{{id}}"><div class="section_title">{{{title}}}<div class="separate"></div></div>{{{view.render}}}</section>',
    cartListSource: '{{#each this}}<div class="cart_list" data-id="{{id}}" value="{{material_id}}"><div class="left"> <input type="checkbox" class="recipe_checkbox" id="check1" checked> <label for="check1"></label><div class="product_img" style="background-image: url({{image}})"></div><div class="product_info"><div class="name">{{name}}</div><div class="origin">국내산</div></div></div><div class="right"><div class="volume_box"> <input id="volume" type="text" value="1" maxlength="3" onkeyup="this.value=this.value.replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g,"");"><div class="button"> <button class="up_button"></button> <button class="down_button"></button></div></div><div class="price_info"><div class="total_price">{{price}}원</div> {{#if weight}}<div class="per_price">{{weight}}당 {{price}}원</div>{{/if}} <input type="hidden" id="per_price" value="{{price}}"></div></div></div> {{/each}}',
    cartListSoloSource: '<div class="cart_list added" data-id="{{id}}"><div class="left"> <input type="checkbox" class="recipe_checkbox" id="check1" checked> <label for="check1"></label><div class="product_img" style="background-image: url({{image}})"></div><div class="product_info"><div class="name">{{name}}</div><div class="origin">국내산</div></div></div><div class="right"><div class="volume_box"> <input id="volume" type="text" value="1" maxlength="3" onkeyup="this.value=this.value.replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g,"");"><div class="button"> <button class="up_button"></button> <button class="down_button"></button></div></div><div class="price_info"><div class="total_price">{{price}}원</div> {{#if weight}}<div class="per_price">{{weight}}당 {{price}}원</div>{{/if}} <input type="hidden" id="per_price" value="{{price}}"></div></div></div>',
    productSearchListSource: '{{#each this}}<div class="search_bar_list"><div class="search_bar_img" style="background-image: url({{image}})"></div><div class="product_info"><div>{{name}}</div> {{#if weight}}<span>{{weight}}당</span>{{/if}} <span>{{price}}원</span></div> <button class="search_bar_button" value="{{id}}">물품추가</button></div> {{/each}}'
}
Fling.View = class View {
    constructor() {
        this.dataObject = null;
    }
    get data() {
        return this.dataObject;
    }
    set data(obj) {
        this.dataObject = obj;
        return;
    }
    get render() {
        return '';
    }
}
Fling.View.TileView = class TileView extends Fling.View {
    constructor(params) {
        super();
        this.data = params;
    }
    get render() {
        let data = this.data.slice(0, 3);
        Handlebars.registerHelper("inc", (value, options) => {
            return parseInt(value) + 1;
        });
        let template = Handlebars.compile(Fling.Template.tileViewSource);
        return template(data);
    }
}
Fling.View.SlideView = class SlideView extends Fling.View {
    constructor(params) {
        super();
        this.data = params;
    }
    get render() {
        let data = this.data;
        let template = Handlebars.compile(Fling.Template.slideViewSource);
        return template(data);
    }
}
Fling.Section = class Section {
    constructor(params, viewObject) {
        this.title = params.title;
        this.id = params.id;
        this.view = viewObject;
    }

    get render() {
        let template = Handlebars.compile(Fling.Template.sectionSource);
        return template(this);
    }
}
Fling.EventHandler = {
    addEvent: function(target, eventType, callBack) {
        document.querySelector(target).addEventListener(eventType, callBack);
    }
};

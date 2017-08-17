class Utils {
    static getParameterByName(name, url = window.location.href) {
        name = name.replace(/[\[\]]/g, "\\$&");
        let regex = new RegExp(`[?&]${name}(=([^&$]*)|&|#|$)`),
            results = regex.exec(url) || null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    }
}
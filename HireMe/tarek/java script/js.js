//window.onscroll = function () {
//    fixedd()
//};


//function fixedd()
//{
//    var n = document.getElementById("nav");
//    var h = document.getElementById("hir");

//    if (document.body.scrollTop > 380 || document.documentElement.scrollTop > 380) {
//        n.style.position = "fixed";
//        n.style.top = "0";
//        n.style.width = '1147px';


//    }
//    else {

//        n.style.position = "unset";
//        h.style.marginLeft = '110px';


//    }

//}
function show() {
    var s = document.getElementById("rakba");
    if (s.style.display == "none") {
        s.style.display = "block";
    }
    else s.style.display = "none";
}
/* admin*/

function mofad() {
    var y = document.getElementById("ch");
    if (y.style.display == "none") {
        y.style.display = "block";
        y.style.opacity = "1";
    }
    else {
        y.style.display = "none";

    }
}

function trans() {
    var r = document.getElementById("rasem");
    var y = document.getElementById("ch");
    if (y.style.display == "block") {
        y.style.display = "none";
    }
    if (r.style.display == "none") {
        r.style.display = "block";
    }
    else

        r.style.display = "none";
}
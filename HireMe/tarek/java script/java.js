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
/*admin*/
function trans1() {
    var r = document.getElementById("tru1");

    if (r.style.display == "block") {
        r.style.display = "none";
    }
    else r.style.display = "block";
}
function trans2() {
    var r = document.getElementById("tru2");

    if (r.style.display == "block") {
        r.style.display = "none";
    }
    else r.style.display = "block";
}
function trans3() {
    var r = document.getElementById("tru3");

    if (r.style.display == "block") {
        r.style.display = "none";
    }
    else r.style.display = "block";
}


function show() {
    var s = document.getElementById("rakba");
    if (s.style.display == "none") {
        s.style.display = "block";
    }
    else s.style.display = "none";
}


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
    var r = document.getElementById("tru");

    if (r.style.display == "block") {
        r.style.display = "none";
    }
    r.style.display = "block";
}
/*ministry*/
$(function () {
    $(".dropministry").focus(function () {
        $("label").css("color", "green");
    })
});

/*create account*/
function confirmpassword() {

    var email = document.getElementById("email").value,
        pas1 = document.getElementById("pa1").value,
        pas2 = document.getElementById("pa2").value;
    let E = 0, v;


    for (var i = 0; i <= email.length; i++) {

        if (email[i] == '@') {
            E++;
        }
        if (email[email.length - 1] == '@') {
            v = 0;
        }

    }
    if (email == "") {
        return;
    }
    else if (email != " ") {
        if (E > 1) {
            alert("you should one @  only >>" + "  " + email);
        }
        if (E == 0) {
            alert("you should add @ >>" + "  " + email);
        }

        if (v == 0) {
            alert("you should add text after  @  >>" + "  " + email);

        }

    }
    if (pas1 != pas2) {
        alert("error in password");



    }

}
"use strict";

//----------- Função para textos contraídos expandiveis -----------

function exibe(id) {
    if (document.getElementById(id).style.display == "none") {
        document.getElementById(id).style.display = "inline";
    }
    else {
        document.getElementById(id).style.display = "none";
    }
}

//------------ Função para controlar as divs do popup -------------

function controlePop(id1, id2) {

    var janela = document.getElementById(id1), fundo = document.getElementById(id2);

    //janela.style.display = "initial";
    $(janela).slideDown("slow");
    fundo.style.backgroundColor = "rgba(0, 0, 0, 0.7)";
    //fundo.style.display = "initial";
    $(fundo).fadeIn("slow");
    fundo.onclick = function () { $(this).fadeOut("slow"); $(janela).slideUp("fast"); };
}

//---------------------- Função para máscara  ---------------------

function mascaraTel(event, id) {

    var tecla = event.charCode ? event.charCode : event.keyCode, tel = document.getElementById(id);

    if (tecla == 46 || tecla == 8 || tecla == 9 || tecla == 13) {
        return;
    }

    if (tecla < 48 || tecla > 57) {
        return false;
    }


    if (tel.value.length == 0) {
        tel.value += "(";
        return;
    }

    if (tel.value.length == 3) {
        tel.value += ")";
        return;
    }

    if (tel.value.length == 5) {

        var conteudo = tel.value.split("");

        if (conteudo[conteudo.length - 1] == 9) {
            tel.setAttribute("MaxLength", "14");
        }

        else {
            tel.setAttribute("MaxLength", "13");
        }
    }

    if (tel.value.length == tel.getAttribute("MaxLength") - 5) {
        tel.value += "-";
    }
}

//--------------- Função que valida clientside campos vazios --------------

function estaPreenchido(id) {
    var formulario = document.getElementById(id), campos = formulario.getElementsByTagName("input"), vazio = 0;

    for (var i = 0; i < campos.length; i++) {
        if (campos[i].value == "") {
            vazio++;
        }
    }
    if (vazio != 0) {
        alert("Preencha os campos vazios!");
        return false;
    }
}

//------------------- Função para limpar campos -----------------------

function limparCampos(id) {
    var pop = document.getElementById(id), campos = pop.getElementsByTagName("input");
    for (var i = 0; i < campos.length; i++) {
        campos[i].value = "";
    }
}

//--------------- Função que compara campos ------------------------

function comparaCampos(id1, id2) {
    var campo1 = document.getElementById(id1), campo2 = document.getElementById(id2);

    if (campo1.value == campo2.value) {
        return true;
    }
    else {
        alert("Senhas não conferem!");
        return false;
    }
}

//--------------- Função que chama o updateprogress ------------------
function exibeProgresso(id) {
    document.getElementById(id).style.display = "inline";
}
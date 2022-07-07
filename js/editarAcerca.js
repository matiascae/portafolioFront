function cambiar_parrafo(){
    document.getElementById("edit-acercade").style.display="block";
    document.getElementById("eliminar_acerca").style.display="block";
    document.getElementById("editar_acerca").style.display ="none";
    let texto = document.getElementById("text-acercade").innerText;
    console.log(texto)
}

function parrafo_editado(){
    document.getElementById("edit-acercade").style.display="none";
}
function myFunction2(valor){
        document.getElementById('text-acercade').innerHTML = valor;
        document.getElementById("editar_acerca").style.display="none";
        }

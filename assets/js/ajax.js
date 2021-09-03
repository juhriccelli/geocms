/*Evento para escutar em qual estado esta clicando */
$(document).ready(function() {
  $(".competicao").on('click', function() {
    var competicao = $(this).attr('id');
    buscaPorCompeticao(competicao);
    mostrarMapa(competicao);
  });
});

//Função para enviar a competição que deseja
function buscaPorCompeticao(competicao) {
  $.ajax({
    type: "GET",
    url: 'bd/consulta.php',
    data: "competicao=" + competicao, // appears as $_GET['id'] @ your backend side
    success: function(data) {
    }

  });

}

function mostrarMapa(competicao) {
  $.ajax({
    type: "POST",
    url: 'pages/mapa.php',
    data: "competicao=" + competicao, // appears as $_GET['id'] @ your backend side
    success: function(data) {
      // data is ur summary
      $('#ajax').html(data);
    }

  });

}

function carregaCapa(nomeJogo, nomePlataforma, imgini)
{
	if(nomeJogo != '' && nomePlataforma != ''){
		$.ajax({
			url : "/jogos/capa/",
			type : 'post',
			data : {
			   jogo : nomeJogo,
			   plataforma : nomePlataforma,
			   imgini : imgini
			},
			beforeSend : function(){
			   $("#resultado").html("BUSCANDO...");
			}
		})
		.done(function(msg){
			$("#resultado").html(msg);
			document.getElementById('imgIni').value = imgini;
		})
		.fail(function(jqXHR, textStatus, msg){
			alert(msg);
		}); 
	}
}

function carregaJogo(nomeJogo,plataforma)
{
	$.ajax({
		url : "/buscarjogos/",
		type : 'get',
		data : {
		   jogo : nomeJogo,
		   plataforma : plataforma
		},
		beforeSend : function(){
		   $("#conteudo").html("BUSCANDO...");
		}
	})
	.done(function(msg){
		aMsg = msg.split('///');
		$("#conteudo").html(aMsg[0]);
		plataformas = aMsg[1].split('//');		
		for(var i=0; i<plataformas.length; i++) {
			plataforma = plataformas[i].split('=>');
			$("#pla_"+plataforma[0]).html(plataforma[1]);
		}
	})
	.fail(function(jqXHR, textStatus, msg){
		alert(msg);
	}); 
	
}

function selecionaCapa(capa)
{
	document.getElementById('jogo_capa').value = capa.src;
	document.getElementById('imgjogocapa').src = capa.src;
	capa.style.border = '2px solid yellow';
}

function carregaImagem(textoBusca, tipoBusca, imgini)
{
	if(textoBusca != ''){
		$.ajax({
			url : "/buscarimagem/",
			type : 'post',
			data : {
			   texto : textoBusca,
			   tipo : tipoBusca,
			   imgini : imgini
			},
			beforeSend : function(){
			   $("#resultado").html("BUSCANDO...");
			}
		})
		.done(function(msg){
			$("#resultado").html(msg);
			document.getElementById('imgIni').value = imgini;
		})
		.fail(function(jqXHR, textStatus, msg){
			alert(msg);
		}); 
	}
}

function selecionaImagem(img)
{
	document.getElementById('imgBusca').value = img.src;
	document.getElementById('imagemBusca').src = img.src;
	img.style.border = '2px solid yellow';
}

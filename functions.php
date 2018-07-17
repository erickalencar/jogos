<?php

use \Erick\Model;
use \Erick\Model\Jogo;

function pegarCapa($idJogo=10)
{
	$jogo = new Jogos();
	$jogo->capa($idJogo);
}

function buscarImagem()
{
	$model = new Model();
	$model->capa();
}

function formatDate($date)
{
	//var_dump($date);
	if (!$date == ''){
		return date('d/m/Y', strtotime($date));
	}
}

?>



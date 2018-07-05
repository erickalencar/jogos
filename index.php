<?php

require_once("vendor/autoload.php");
require_once("functions.php");

use \Erick\DB\Sql;
use \Erick\Page;
use \Erick\Model;
use \Erick\Model\Jogo;
use \Erick\Model\Plataforma;
use \Erick\Model\Empresa;
use \Erick\Model\Progresso;

$app = new \Slim\Slim();

$app->config('debug', true);

// ------------------------------
//------------IMAGEM-------------
//-------------------------------

$app->post('/buscarimagem/', function(){	

	$img = Model::buscaImagem($_POST['texto'],$_POST['tipo'],$_POST['imgini']);	
	$divImagens = "<div>";
	foreach ($img as $key => $value) {
		$divImagens = $divImagens . '<img id="img' . $key .'" src="' . $value['link'] . '" width = "50px" border="1" onclick="selecionaImagem(this)") />';
		//var_dump($divCapas);
	}
	$divImagens = $divImagens . "</div>";
	echo($divImagens);

});

// ------------------------------
//------------JOGOS--------------
//-------------------------------

$app->get('/', function(){
	$page = new Page();
    $page->setTpl("jogos", [
    	'jogos'=>Jogo::listAll(),
    	'plataformas'=>Jogo::listQtd()
    ]);
});

$app->get('/buscarjogos/', function(){	

	$nomeJogo = isset($_GET['jogo']) ? $_GET['jogo'] : null;
	$plataforma = isset($_GET['plataforma']) ? $_GET['plataforma'] : null; 
	$jogos = Jogo::listAll($nomeJogo,$plataforma);
	$plataformas = Jogo::listQtd($nomeJogo,$plataforma);
	$divJogos = "<div>";
	foreach ($jogos as $key => $value) {
		$divJogos = $divJogos . '<div class="item"><h5>' . $value['jogo_nome'] . '</h5>
                				<img  Width="140px" src="' . $value['jogo_capa'] . '" />
               					<div class="product-hover">
                    			<a href="/jogos/' . $value['jogo_id'] . '/alterar" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Alterar</a>
                    			<a href="/jogos/' . $value['jogo_id'] . '" class="view-details-link"><i class="fa fa-link"></i> Ver detalhes</a>
                				</div></div>';
	}
	$divJogos = $divJogos . "</div>";

	$scrPlataformas = "///";
	foreach ($plataformas as $key => $value) {
		$scrPlataformas = $scrPlataformas . (string)$value['PLA_ID'] ."=>" . (string)$value['qtd'] . "//";
	}
	$divJogos = $divJogos . $scrPlataformas;
	echo($divJogos);

});

$app->get('/jogos/incluir/', function(){	
	$page = new Page();
    $page->setTpl("jogos_incluir", [
    	"plataforma"=>Plataforma::listAll(),
    	"empresa"=>Empresa::listAll(),
    	"progresso"=>Progresso::listAll()
    ]);
});

$app->post('/jogos/capa/', function(){	
	$capas = Jogo::Capa($_POST['jogo'],$_POST['plataforma'],$_POST['imgini']);	
	$divCapas = "<div>";
	foreach ($capas as $key => $value) {
		$divCapas = $divCapas . '<img id="capa' . $key .'" src="' . $value['link'] . '" width = "100px" border="1" onclick="selecionaCapa(this)") />';
		//var_dump($divCapas);
	}
	$divCapas = $divCapas . "</div>";
	echo($divCapas);

});

$app->post("/jogos/incluir", function(){
	$jogo = new Jogo();
	$jogo->setData($_POST);
	$jogo->save();
	header("Location: /");
	exit;
});

$app->get('/jogos/:jogo_id/alterar/', function($jogo_id){
	$jogo = new Jogo();
	$jogo->get((int)$jogo_id);	
	$page = new Page();
    $page->setTpl("jogos_alterar", [
    	"plataforma"=>Plataforma::listAll(),
    	"empresa"=>Empresa::listAll(),
    	"progresso"=>Progresso::listAll(),
    	'jogo'=>$jogo->getValues()
    ]);
});

$app->post("/jogos/:jogo_id/alterar", function(){
	$jogo = new Jogo();
	$jogo->setData($_POST);
	$jogo->save();
	header("Location: /");
	exit;
});

$app->get("/jogos/:jogo_id/excluir/", function($jogo_id){
	$jogo = new Jogo();
	$jogo->get((int)$jogo_id);
	$jogo->delete();
	header("Location: /");
	exit;
});

$app->get('/jogos/:jogo_id/', function($jogo_id){
	$jogo = new Jogo();
	$jogo->get((int)$jogo_id);	
	$plataforma = new Plataforma();
	$plataforma->get((int)$jogo->getpla_id());
	$publisher = new Empresa();
	$publisher->get((int)$jogo->getjogo_publisher());
	$desenvolvedora = new Empresa();
	$desenvolvedora->get((int)$jogo->getjogo_desenvolvedora());
	$progresso = new Progresso();
	$progresso->get((int)$jogo->getpro_id());
	$page = new Page();
    $page->setTpl("jogos_detalhes", [
    	"plataforma"=>$plataforma->getValues(),
    	"publisher"=>$publisher->getValues(),
    	"desenvolvedora"=>$desenvolvedora->getValues(),
    	"progresso"=>$progresso->getValues(),
    	'jogo'=>$jogo->getValues()
    ]);
});

// ------------------------------
//------------EMPRESAS-----------
//-------------------------------

$app->get('/empresas/', function(){
	$page = new Page();
    $page->setTpl("empresas", [
    	'empresas'=>Empresa::listAll()
    ]);
});

$app->get('/empresas/incluir/', function(){	
	$page = new Page();
    $page->setTpl("empresas_incluir", [
    ]);
});

$app->post("/empresas/incluir", function(){
	$empresa = new Empresa();
	$empresa->setData($_POST);
	$empresa->save();
	header("Location: /empresas/");
	exit;
});

$app->post('/empresas/capa/', function(){	
	$capas = Empresa::Capa($_POST['empresa'],'games',$_POST['imgini']);	
	$divCapas = "<div>";
	foreach ($capas as $key => $value) {
		$divCapas = $divCapas . '<img id="capa' . $key .'" src="' . $value['link'] . '" width = "100px" border="1" onclick="selecionaCapa(this)") />';
		//var_dump($divCapas);
	}
	$divCapas = $divCapas . "</div>";
	echo($divCapas);

});

$app->get('/empresas/:emp_id/alterar/', function($emp_id){
	$empresa = new Empresa();
	$empresa->get((int)$emp_id);	
	$page = new Page();
    $page->setTpl("empresas_alterar", [
    	'empresa'=>$empresa->getValues()
    ]);
});

$app->get("/empresas/:emp_id/excluir/", function($emp_id){
	$empresa = new Empresa();
	$empresa->get((int)$emp_id);
	$empresa->delete();
	header("Location: /empresas/");
	exit;
});

$app->get('/empresas/:emp_id/', function($emp_id){
	$empresa = new Empresa();
	$empresa->get((int)$emp_id);	
	$page = new Page();
    $page->setTpl("empresas_detalhes", [    	
    	'empresa'=>$empresa->getValues()
    ]);
});

// ------------------------------
//----------PLATAFORMAS----------
//-------------------------------

$app->get('/plataformas/', function(){
	$page = new Page();
    $page->setTpl("plataformas", [
    	'plataformas'=>Plataforma::listAll()
    ]);
});

$app->get('/plataformas/incluir/', function(){	
	$page = new Page();
    $page->setTpl("plataformas_incluir", [
    ]);
});

$app->post("/plataformas/incluir", function(){
	$plataforma = new Plataforma();
	$plataforma->setData($_POST);
	$plataforma->save();
	header("Location: /plataformas/");
	exit;
});

$app->post('/plataformas/capa/', function(){	
	$capas = Plataforma::Capa($_POST['plataforma'],'games',$_POST['imgini']);	
	$divCapas = "<div>";
	foreach ($capas as $key => $value) {
		$divCapas = $divCapas . '<img id="capa' . $key .'" src="' . $value['link'] . '" width = "100px" border="1" onclick="selecionaCapa(this)") />';
		//var_dump($divCapas);
	}
	$divCapas = $divCapas . "</div>";
	echo($divCapas);

});

$app->get('/plataformas/:pla_id/alterar/', function($pla_id){
	$plataforma = new Plataforma();
	$plataforma->get((int)$pla_id);	
	$page = new Page();
    $page->setTpl("plataformas_alterar", [
    	'plataforma'=>$plataforma->getValues()
    ]);
});

$app->get("/plataformas/:pla_id/excluir/", function($pla_id){
	$plataforma = new Plataforma();
	$plataforma->get((int)$pla_id);
	$plataforma->delete();
	header("Location: /plataformas/");
	exit;
});

$app->get('/plataformas/:pla_id/', function($pla_id){
	$plataforma = new Plataforma();
	$plataforma->get((int)$pla_id);	
	$page = new Page();
    $page->setTpl("plataformas_detalhes", [    	
    	'plataforma'=>$plataforma->getValues()
    ]);
});

// ------------------------------
//----------PROGRESSOS-----------
//-------------------------------

$app->get('/progressos/', function(){
	$page = new Page();
    $page->setTpl("progressos", [
    	'progressos'=>Progresso::listAll()
    ]);
});

$app->get('/progressos/incluir/', function(){	
	$page = new Page();
    $page->setTpl("progressos_incluir", [
    ]);
});

$app->post("/progressos/incluir", function(){
	$progresso = new Progresso();
	$progresso->setData($_POST);
	$progresso->save();
	header("Location: /progressos/");
	exit;
});

$app->get('/progressos/:pro_id/alterar/', function($pro_id){
	$progresso = new Progresso();
	$progresso->get((int)$pro_id);	
	$page = new Page();
    $page->setTpl("progressos_alterar", [
    	'progresso'=>$progresso->getValues()
    ]);
});

$app->get("/progressos/:pro_id/excluir/", function($pro_id){
	$progresso = new Progresso();
	$progresso->get((int)$pro_id);
	$progresso->delete();
	header("Location: /progressos/");
	exit;
});

$app->get('/progressos/:pro_id/', function($pro_id){
	$progresso = new Progresso();
	$progresso->get((int)$pro_id);	
	$page = new Page();
    $page->setTpl("progressos_detalhes", [    	
    	'progresso'=>$progresso->getValues()
    ]);
});

// ------------------------------
//----------ESTATÍSTICAS-----------
//-------------------------------

$app->get('/estatisticas/', function(){
	$page = new Page();
    $page->setTpl("estatisticas", [
    	'estatisticas'=>Jogo::estatisticas(),
    	'qtd'=>Jogo::listQtd()    	
    ]);
});

$app->run();

?>
<?php 
namespace Erick\Model;
use \Erick\DB\Sql;
use \Erick\Model;
use \Erick\gisearch;

class Jogo extends Model {
	public static function listAll($nomeJogo = null, $plataforma = null)
	{		
		$query = "SELECT * FROM erick.dbo.jogos where 1=1 ";
		if($nomeJogo != null){
			$query = $query . " and jogo_nome like '%" . $nomeJogo . "%' ";
		}
		if($plataforma != null){
			$query = $query . " and pla_id = " . $plataforma ;
		}
		$query = $query . " ORDER BY jogo_nome";
		$sql = new Sql();
		$results = $sql->select($query);
		return $results;
	}

	public static function listQtd($nomeJogo = null, $plataforma = null)
	{		
		$query = "SELECT p.PLA_NOME, p.PLA_ID, p.PLA_LOGO, 
					(SELECT count(p2.PLA_ID) as qtd 
					FROM erick.dbo.PLATAFORMA p2
					INNER join erick.dbo.jogos j on j.PLA_ID = p2.pla_id
				 	where p2.PLA_ID = p.pla_id ";
		if($nomeJogo != null){
			$query = $query . " and jogo_nome like '%" . $nomeJogo . "%' ";
		}
		$query = $query . ") AS qtd 
					FROM erick.dbo.PLATAFORMA p
					ORDER BY p.pla_nome";

		$sql = new Sql();
		$results = $sql->select($query);
		return $results;
	}

	public static function capa($nomeJogo, $nomePlataforma,$imgini)
	{
		$i = new gisearch($nomeJogo . " " . $nomePlataforma . " cover", true); //the search keyword
		//$i = new gisearch(); //the search keyword
		$im = $i->get_images($nomeJogo . " " . $nomePlataforma . " cover",$imgini,true);
		//echo $i->get_link();
		//var_dump($im);
		return $im;
	}

	public function get($jogoid)
	{
		$sql = new Sql();
		$results = $sql->select("SELECT * FROM erick.dbo.jogos j INNER JOIN erick.dbo.PLATAFORMA p ON j.pla_id = p.PLA_ID where jogo_id = :jogoid", [
			':jogoid'=>$jogoid
		]);
		$this->setData($results[0]);
	}

	public function save()
	{
		$sql = new Sql();
		$results = $sql->select("exec erick.dbo.sp_jogo_salvar :jogo_id, :jogo_nome, :pla_id, :jogo_publisher, :jogo_desenvolvedora, :pro_id, :jogo_capa, :jogo_dt", array(
			":jogo_id"=>$this->getjogo_id(),
			":jogo_nome"=>$this->getjogo_nome(),
			":pla_id"=>$this->getpla_id(),
			":jogo_publisher"=>$this->getjogo_publisher(),
			":jogo_desenvolvedora"=>$this->getjogo_desenvolvedora(),
			":pro_id"=>$this->getpro_id(),
			":jogo_capa"=>$this->getjogo_capa(),
			":jogo_dt"=>$this->getjogo_dt()	
		));
		$this->setData($results[0]);
	}

	public function delete()
	{
		$sql = new Sql();
		$sql->query("DELETE FROM erick.dbo.jogos WHERE jogo_id = :jogo_id", [
			':jogo_id'=>$this->getjogo_id()
		]);
	}

	public static function estatisticas()
	{		
		$query = "SELECT PRO_NOME, ISNULL([PS3],0) AS PS3,ISNULL([PS4],0) AS PS4,ISNULL([PSN],0) AS PSN,
						ISNULL([Switch],0) AS 'Switch',ISNULL([XBLA],0) AS XBLA,ISNULL([XBOX],0) AS XBOX,
						ISNULL([X360],0) AS X360,ISNULL([XONE],0) AS XONE
				FROM (SELECT pr.PRO_NOME, PLA_SIGLA,  COUNT(*) AS qtd 
				      FROM erick.dbo.jogos j
						INNER JOIN erick.dbo.PLATAFORMA p ON p.PLA_ID = j.pla_id
						INNER JOIN erick.dbo.PROGRESSO pr ON pr.PRO_ID = j.pro_id
						GROUP BY PRO_NOME, PLA_SIGLA ) sq
				PIVOT (SUM(qtd) FOR PLA_SIGLA IN ([PS3],[PS4],[PSN],[Switch],[XBLA],[XBOX],[X360],[XONE])) AS pt ";		

		$sql = new Sql();
		$results = $sql->select($query);
		return $results;
	}



	public static function checkList($list)
	{
		foreach ($list as &$row) {
			
			$j = new Jogos();
			$j->setData($row);
			$row = $j->getValues();
		}
		return $list;
	}
	
	
	
	public function checkPhoto()
	{
		if (file_exists(
			$_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR . 
			"res" . DIRECTORY_SEPARATOR . 
			"site" . DIRECTORY_SEPARATOR . 
			"img" . DIRECTORY_SEPARATOR . 
			"products" . DIRECTORY_SEPARATOR . 
			$this->getidproduct() . ".jpg"
			)) {
			$url = "/res/site/img/products/" . $this->getidproduct() . ".jpg";
		} else {
			$url = "/res/site/img/product.jpg";
		}
		return $this->setdesphoto($url);
	}
	public function getValues()
	{
		$this->checkPhoto();
		$values = parent::getValues();
		return $values;
	}
	public function setPhoto($file)
	{
		$extension = explode('.', $file['name']);
		$extension = end($extension);
		switch ($extension) {
			case "jpg":
			case "jpeg":
			$image = imagecreatefromjpeg($file["tmp_name"]);
			break;
			case "gif":
			$image = imagecreatefromgif($file["tmp_name"]);
			break;
			case "png":
			$image = imagecreatefrompng($file["tmp_name"]);
			break;
		}
		$dist = $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR . 
			"res" . DIRECTORY_SEPARATOR . 
			"site" . DIRECTORY_SEPARATOR . 
			"img" . DIRECTORY_SEPARATOR . 
			"products" . DIRECTORY_SEPARATOR . 
			$this->getidproduct() . ".jpg";
		imagejpeg($image, $dist);
		imagedestroy($image);
		$this->checkPhoto();
	}
	public function getFromURL($desurl)
	{
		$sql = new Sql();
		$rows = $sql->select("SELECT * FROM tb_products WHERE desurl = :desurl LIMIT 1", [
			':desurl'=>$desurl
		]);
		$this->setData($rows[0]);
	}
	public function getCategories()
	{
		$sql = new Sql();
		return $sql->select("
			SELECT * FROM tb_categories a INNER JOIN tb_productscategories b ON a.idcategory = b.idcategory WHERE b.idproduct = :idproduct
		", [
			':idproduct'=>$this->getidproduct()
		]);
	}
	public static function getPage($page = 1, $itemsPerPage = 10)
	{
		$start = ($page - 1) * $itemsPerPage;
		$sql = new Sql();
		$results = $sql->select("
			SELECT SQL_CALC_FOUND_ROWS *
			FROM tb_products 
			ORDER BY desproduct
			LIMIT $start, $itemsPerPage;
		");
		$resultTotal = $sql->select("SELECT FOUND_ROWS() AS nrtotal;");
		return [
			'data'=>$results,
			'total'=>(int)$resultTotal[0]["nrtotal"],
			'pages'=>ceil($resultTotal[0]["nrtotal"] / $itemsPerPage)
		];
	}
	public static function getPageSearch($search, $page = 1, $itemsPerPage = 10)
	{
		$start = ($page - 1) * $itemsPerPage;
		$sql = new Sql();
		$results = $sql->select("
			SELECT SQL_CALC_FOUND_ROWS *
			FROM tb_products 
			WHERE desproduct LIKE :search
			ORDER BY desproduct
			LIMIT $start, $itemsPerPage;
		", [
			':search'=>'%'.$search.'%'
		]);
		$resultTotal = $sql->select("SELECT FOUND_ROWS() AS nrtotal;");
		return [
			'data'=>$results,
			'total'=>(int)$resultTotal[0]["nrtotal"],
			'pages'=>ceil($resultTotal[0]["nrtotal"] / $itemsPerPage)
		];
	}


	
}
 ?>
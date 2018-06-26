<?php 
namespace Erick\Model;
use \Erick\DB\Sql;
use \Erick\Model;

class Empresa extends Model {
	public static function listAll()
	{
		$sql = new Sql();
		$results = $sql->select("SELECT * FROM erick.dbo.empresa ORDER BY emp_nome");
		return $results;
	}	

	public function get($emp_id)
	{
		$sql = new Sql();
		$results = $sql->select("SELECT * FROM erick.dbo.EMPRESA where emp_id = :emp_id", [
			':emp_id'=>$emp_id
		]);
		$this->setData($results[0]);
	}

	public function save()
	{
		$sql = new Sql();
		$results = $sql->select("exec erick.dbo.sp_empresa_salvar :emp_id, :emp_nome, :emp_logo", array(
			":emp_id"=>$this->getemp_id(),
			":emp_nome"=>$this->getemp_nome(),
			":emp_logo"=>$this->getemp_logo()			
		));
		$this->setData($results[0]);
	}

	public function delete()
	{
		$sql = new Sql();
		$sql->query("DELETE FROM erick.dbo.EMPRESA WHERE EMP_ID = :emp_id", [
			':emp_id'=>$this->getEMP_ID()
		]);
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
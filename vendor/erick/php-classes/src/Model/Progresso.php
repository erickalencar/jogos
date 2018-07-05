<?php 
namespace Erick\Model;
use \Erick\DB\Sql;
use \Erick\Model;

class Progresso extends Model {
	public static function listAll()
	{
		$sql = new Sql();
		$results = $sql->select("SELECT * FROM erick.dbo.progresso ORDER BY pro_nome");
		return $results;
	}	

	public function get($pro_id)
	{
		$sql = new Sql();
		$results = $sql->select("SELECT * FROM erick.dbo.PROGRESSO p WHERE p.PRO_ID = :pro_id", [
			':pro_id'=>$pro_id
		]);
		$this->setData($results[0]);
	}

	public function save()
	{
		$sql = new Sql();
		$results = $sql->select("exec erick.dbo.sp_progresso_salvar :pro_id, :pro_nome, :pro_logo", array(
			":pro_id"=>$this->getpro_id(),
			":pro_nome"=>$this->getpro_nome(),
			":pro_logo"=>$this->getpro_logo()
		));
		$this->setData($results[0]);
	}

	public function delete()
	{
		$sql = new Sql();
		$sql->query("DELETE FROM erick.dbo.PROGRESSO WHERE PRO_ID = :pro_id", [
			':pro_id'=>$this->getPRO_ID()
		]);
	}



}
 ?>
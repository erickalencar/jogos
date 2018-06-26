<?php 
namespace Erick\Model;
use \Erick\DB\Sql;
use \Erick\Model;

class Plataforma extends Model {
	public static function listAll()
	{
		$sql = new Sql();
		$results = $sql->select("SELECT * FROM erick.dbo.plataforma ORDER BY pla_nome");
		return $results;
	}	

	public function get($pla_id)
	{
		$sql = new Sql();
		$results = $sql->select("SELECT * FROM erick.dbo.PLATAFORMA p WHERE p.PLA_ID = :pla_id", [
			':pla_id'=>$pla_id
		]);
		$this->setData($results[0]);
	}

	public function save()
	{
		$sql = new Sql();
		$results = $sql->select("exec erick.dbo.sp_plataforma_salvar :pla_id, :pla_nome, :pla_logo", array(
			":pla_id"=>$this->getpla_id(),
			":pla_nome"=>$this->getpla_nome(),
			":pla_logo"=>$this->getpla_logo()			
		));
		$this->setData($results[0]);
	}

	public function delete()
	{
		$sql = new Sql();
		$sql->query("DELETE FROM erick.dbo.PLATAFORMA WHERE PLA_ID = :pla_id", [
			':pla_id'=>$this->getPLA_ID()
		]);
	}



}
 ?>
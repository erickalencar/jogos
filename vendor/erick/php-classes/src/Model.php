<?php

namespace Erick;

class Model {

	private $values = [];

	public function __call($name, $args)
	{

		$method = substr($name, 0, 3);
		$fieldName = substr($name, 3, strlen($name));

		switch ($method) {
			case 'get':
				return (isset($this->values[$fieldName])) ? $this->values[$fieldName] : null;
				break;
			
			case 'set':
				$this->values[$fieldName] = $args[0];
				break;
		}

	}

	public function setData($data = array()){

		foreach ($data as $key => $value) {
			
			$this->{"set".$key}($value);
		}
	}

	public function getValues()
	{

		return $this->values;

	}

	public function buscaImagem($textoBusca, $tipoBusca, $imgini)
	{
		$i = new gisearch($textoBusca . ' ' . $tipoBusca); //the search keyword
		//$i = new gisearch(); //the search keyword
		$im = $i->get_images($textoBusca . ' ' . $tipoBusca,$imgini);
		//echo $i->get_link();
		//var_dump($im);
		return $im;
	}

}

?>
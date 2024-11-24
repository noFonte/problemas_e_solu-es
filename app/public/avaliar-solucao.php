<?php
use Solucoes\OutPut;
require_once "../Init.php";
try{


  OutPut::json("OK");
}catch(Exception $e){
  OutPut::json($e->getMessage(),$e->getCode());
}
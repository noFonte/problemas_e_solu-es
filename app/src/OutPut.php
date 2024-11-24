<?php 


namespace Solucoes;

class OutPut{
    public  static function json($dados=null,$httpCode=200){
            header("HTTP/1.1 ".$httpCode);
            header("Content-Type:application/json; charset=utf-8");
            $dadosOutput=[
                "http_code"=>$httpCode,
                "response"=>$dados
            ];
            echo json_encode($dadosOutput);
            exit;
    }
}
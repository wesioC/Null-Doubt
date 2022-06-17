<?php
class Docente{
    private $matricula;
    private $nome;

    function __construct($matricula,$nome){
        $this->matricula = $matricula;
        $this->nome = $nome;
    }

    public function getMatricula(){
        return $this->matricula;
    }
    public function setMatricula($matricula){
        $this->matricula = $matricula;
    }

    public function getNome(){
        return $this->nome;
    }
    public function setNome($nome){
        $this->nome = $nome;
    }

}
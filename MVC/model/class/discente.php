<?php

class Discente{
    private string $matricula;
    private string $nome;
    private string $curso;

    function __construct(){
        $this->matricula = "";
        $this->nome = "";
        $this->curso = "";
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
    
    public function getCurso(){
        return $this->curso;
    }

    public function setCurso($curso){
        $this->curso = $curso;
    }  
}
?>
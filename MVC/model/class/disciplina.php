<?php
class Disciplina{
    private $cod;
    private $nome;
    private $periodo;
    private $dataFim;
    private $ativo;
    private $matrDoce;

    function __construct($cod,$nome,$periodo,$dataFim,$ativo,$matrDoce){
        $this->cod = $cod;
        $this->nome = $nome;
        $this->periodo = $periodo;
        $this->dataFim = $dataFim;
        $this->ativo = $ativo;
        $this->matrDoce = $matrDoce;
    }

    public function getCod(){
        return $this->cod;
    }

    public function setCod($cod){
        $this->cod = $cod;
    }

    public function getDataFim(){
        return $this->dataFim;
    }

    public function setDataFim($dataFim){
        $this->dataFim = $dataFim;
    }

    public function getNome(){
        return $this->nome;
    }

    public function setNome($nome){
        $this->nome = $nome;
    }
    
    public function getPeriodo(){
        return $this->Periodo;
    }

    public function setPeriodo($periodo){
        $this->periodo = $periodo;
    }
    
    public function getAtivo(){
        return $this->ativo;
    }

    public function setAtivo($ativo){
        $this->ativo = $ativo;
    }
    
    public function getMatrDoce(){
        return $this->matrDoce;
    }

    public function setMatrDoce($matrDoce){
        $this->matrDoce = $matrDoce;
    }

}
<?php
class Monitor extends Discente{
    private $matrDoce;
    private $codDisc;
    function __construct($codDisc,$matrDoce){
        $this->codDisc = $codDisc;
        $this->matrDoce = $matrDoce;
        parent::__construct();
    }

    public function getMatrDoce(){
        return $this->matrDoce;
    }

    public function setMatrDoce($matrDoce){
        $this->matrDoce = $matrDoce;
    }

    public function getCodDisc(){
        return $this->codDisc;
    }

    public function setCodDisc($codDisc){
        $this->codDisc = $codDisc;
    }
}

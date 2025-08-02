// Liciencia 
// SPDX-License-Identifier: GPL-3.0-or-later

// Version solidity

pragma solidity 0.8.24;

// Contrato
contract calculadora {

    // Variables
    uint256 public resultado = 10 ;

    // Modifiers
    modifier checkNumber(uint256 num1_){
        if (num1_!= 10) revert();
        _;
    }

    // Events
    event Addition(uint256 num1, uint256 num2, uint256 resultado);
    event Substraction(uint256 num1, uint256 num2, uint256 resultado);

    // External Functions
    // palabra(function) + nombre + argumentos + visibilidad + modificadores + valor devuelto
    function addition(uint256 num1_, uint256 num2_) public returns(uint256 resultado_){
     resultado_ = num1_+ num2_;
     emit Addition(num1_,num2_,resultado_);
    }

    function substraction(uint256 num1_, uint256 num_2) public returns (uint256 resultado_){
    resultado_ = substraction_logic(num1_,num_2);
    emit Substraction(num1_,num_2,resultado_);
    }

    function multiplier(uint256 num1_) public {
        resultado = resultado * num1_;
    }

    function multiplier2(uint256 num1_) public checkNumber(num1_){
        resultado = resultado * num1_;
    }
    
    // Internal Functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns (uint256 resultado_){
        resultado_ = num1_ - num2_;
    }
}

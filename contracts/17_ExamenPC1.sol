// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Ferreteria245126 {

    struct Herramienta {
        uint id;
        string nombre;
        uint precio;
    }

    Herramienta[] public herramientas;

    constructor() {
        console.log("Ejecutado por: 245126 - Clever Josue Aguilar Idrogo");
    }
}
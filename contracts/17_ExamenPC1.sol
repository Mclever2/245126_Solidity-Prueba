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

    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    constructor() {
        console.log("Ejecutado por: 245126 - Clever Josue Aguilar Idrogo");
    }

    function agregarElemento(uint _id, string memory _nombre, uint _precio) public {
    console.log("Ejecutado por: 245126 - Clever Josue Aguilar Idrogo");
    herramientas.push(Herramienta(_id, _nombre, _precio));
    }

    function contarElementos() public view returns(uint) {
        console.log("Ejecutado por: 245126 - Clever Josue Aguilar Idrogo");
        return herramientas.length;
    }
}
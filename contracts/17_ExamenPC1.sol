// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Ferreteria245126 {

    struct Herramienta {
        uint id;
        string nombre;
        uint precio;
        bool estado;
    }

    Herramienta[] public herramientas;

    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    modifier registrar() {
        console.log("Ejecutado por: 245126 - Clever Josue Aguilar Idrogo");
        _;
    }

    constructor() registrar {                                                 
    }

    function agregarElemento(uint _id, string memory _nombre, uint _precio) public registrar {
        for (uint i = 0; i < herramientas.length; i++) {
            require(herramientas[i].id != _id, "Herramienta con ese ID ya existe");
        }
        require(_precio > 0, "El precio debe ser mayor a cero");
        herramientas.push(Herramienta(_id, _nombre, _precio, true));
    }

    function contarElementos() public view registrar returns(uint) {
        return herramientas.length;
    }
}
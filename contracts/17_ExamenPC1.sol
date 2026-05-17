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

    uint256 public cantidad;
    mapping(uint => Herramienta) public herramientas;

    address public dirContrato = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    modifier registrar() {
        console.log("Ejecutado por: 245126 - Clever Josue Aguilar Idrogo");
        _;
    }

    constructor() registrar {
    }

    function agregarElemento(uint _id, string memory _nombre, uint _precio) public registrar {
        require(herramientas[_id].id == 0, "Herramienta con ese ID ya existe");
        require(_precio > 0, "El precio debe ser mayor a cero");
        herramientas[_id] = Herramienta(_id, _nombre, _precio, true);
        cantidad = cantidad + 1;
    }

    function contarElementos() public view registrar returns(uint) {
        return cantidad;
    }

    function inactivarElemento(uint _id) public registrar {
        herramientas[_id].estado = false;
    }
}
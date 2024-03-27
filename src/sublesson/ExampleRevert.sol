// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ExampleRevert {
    error ExampleRevert__Error();
    error ExampleRevert__FxError();

    function revertWithError() public pure {
        if (false) {
            revert ExampleRevert__Error();
        }
    }

    function revertWithRequire() public pure {
        require(true, "ExampleRevert__Error");
    }

    function revertFxError() public pure {
        if(false){
            revert ExampleRevert__FxError();
        }else{
            require(true,"hhhhh");
        }
    }
}

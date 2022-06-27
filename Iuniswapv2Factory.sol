pragma solidity ^0.8.0;

interface UniswapV2Factory{

    function feeToo() external view returns(address);
    function feeToSetter() external view returns(address);

    function getPair(address tokenA,address tokenB) external view returns(address pair);
    function allPairs(uint)external view returns(address pair);
    function allPairsLength(uint)external view returns(uint);

    function createPair(address tokenA,address tokenB) external view returns(address pair);

    function setFeeTo(address)external;
    function setFeeToSetter(address) external;

    event pairCreated(address tokenA,address tokenB,address pair,uint);
}
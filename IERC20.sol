pragma solidity ^0.8.0;

interface IERC20{
    function totalSupply()external  view returns(uint);
    function balanceOf(address owner)external view returns(uint);
    function transfer(address to, uint token)external returns(bool);
    function transferfrom(address from,address to,uint token)external returns(bool);
    function approve(address spender, uint token)external returns(bool);
    function allowance(address owner,address spender)external returns(uint);
    event Transfer(address indexed from, address indexed to, uint token);
    event Approve(address owner, address spender, uint value);
}
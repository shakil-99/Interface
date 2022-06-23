// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

interface IERC1155{
    function safeTranseferFrom(address from,address to,uint256 _id,uint256 value,bytes calldata _data)external;
    //It allows to send (from) this address to (to) address with this (_id)
    //Value:- The number of token or nft i want to transfer 

    function safeBatchTransferFrom(address from, address to,uint256[] calldata _id,uint256[] calldata _value,bytes calldata _data)external;
    //Here we can send bunch of ID's and Value

     function balanceOf(address _owner, uint256 _id) external view returns (uint256);
    //it return the owner with a specific id
    //at 1 id i have 100 token it will return 100


    function balanceOfBatch(address[] calldata _owners, uint256[] calldata _ids) external view returns (uint256[] memory);
    // here it take in array insted of single value

    function setApprovalForAll(address _operator, bool _approved) external;
    //it allow us to set operator to use token in behalf of owner

    function isApprovedForAll(address _owner, address _operator) external view returns (bool);
    //

    event TransferSingle(address indexed _operator, address indexed _from, address indexed _to, uint256 _id, uint256 _value);
    event TransferBatch(address indexed _operator, address indexed _from, address indexed _to, uint256[] _ids, uint256[] _values);
    event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);
}

//SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.19;

contract Upload
{

    struct Access
    {
        address user;
        bool access;
    }

    mapping(address=>string[]) value;
    mapping(address=>mapping(address=>bool)) ownership;
    mapping(address=>Access[]) Accesslist;
    mapping(address=> mapping(address=>bool)) previousData;


    function add(address user,string memory url) public
    {

        value[user].push(url);


    }


    function allow(address user) external
    {

        ownership[msg.sender][user]=true;
      //  Accesslist[msg.sender].push(Access(user,true));

        if(previousData[msg.sender][user])
        {
            
            for(uint i=0;i<Accesslist[msg.sender].length;++i)

            {
                    if(Accesslist[msg.sender][i].user == user)

                        Accesslist[msg.sender][i].access = true;
                    

            }



        }

        else 
        {
            Accesslist[msg.sender].push(Access(user,true));
            previousData[msg.sender][user]=true;
        }


    }

    function disallow(address user) external 
    {

        ownership[msg.sender][user]=false;
        for(uint i=0;i<Accesslist[msg.sender].length;++i)
        {

         if(Accesslist[msg.sender][i].user == user)
            Accesslist[msg.sender][i].access=false;       

        }
    }

    function display(address _user) external view returns( string[] memory)
    {
        require(_user==msg.sender || ownership[_user][msg.sender], "You do not have access buddy!");
        return value[_user];


    }

    function shareAccess() public view returns(Access[] memory)
    {

        return Accesslist[msg.sender];
    }





}
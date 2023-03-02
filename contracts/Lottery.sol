// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract Lottery{
    /**Type declaration */
    /**State Variables */
    enum LotteryState{
        REGISTRATION,
        STARTED,
        CLOSED
    }
    /**Voting contract Variables */
    address private i_owner;
    address[] private voters;
    mapping(address=>uint256) candidate_id;
    struct candidate{
        string name;
        string proposal;
        int256 numVotes;
    }
    mapping(address=>candidate) list_candidate;
    mapping(address=>address) delegate_voting;
    LotteryState private lotteryState;
    address private winner;
    bool[] private voted;

}
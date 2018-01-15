pragma solidity ^0.4.18;

contract Voting {

  mapping (bytes32 => uint8) public votesReceived;
  mapping (address => bool) public alreadyVotedOne;
  mapping (address => bool) public alreadyVotedTwo;
  mapping (address => bool) public alreadyVotedThree;
  mapping (address => bool) public alreadyVotedFour;
  mapping (address => bool) public alreadyVotedFive;
  mapping (address => bool) public alreadyVotedSix;
  mapping (address => bool) public alreadyVotedSeven;
  mapping (address => bool) public alreadyVotedEight;
  mapping (address => bool) public alreadyVotedNine;
  mapping (address => bool) public alreadyVotedTen;
  bytes32[] public candidateList;
  
  modifier notVotedOne() {
    require(!alreadyVotedOne[msg.sender]);
    _;
  }
  
  modifier notVotedTwo() {
    require(!alreadyVotedTwo[msg.sender]);
    _;
  }
  
  modifier notVotedThree() {
    require(!alreadyVotedThree[msg.sender]);
    _;
  }
  
  modifier notVotedFour() {
    require(!alreadyVotedFour[msg.sender]);
    _;
  }
  
  modifier notVotedFive() {
    require(!alreadyVotedFive[msg.sender]);
    _;
  }
  
  modifier notVotedSix() {
    require(!alreadyVotedSix[msg.sender]);
    _;
  }
  
  modifier notVotedSeven() {
    require(!alreadyVotedSeven[msg.sender]);
    _;
  }
  
  modifier notVotedEight() {
    require(!alreadyVotedEight[msg.sender]);
    _;
  }
  
  modifier notVotedNine() {
    require(!alreadyVotedNine[msg.sender]);
    _;
  }
  
  modifier notVotedTen() {
    require(!alreadyVotedTen[msg.sender]);
    _;
  }

  function Voting(bytes32[] candidateNames) public {
    candidateList = candidateNames;
  }

  function totalVotesFor(bytes32 candidate) view public returns (uint8) {
    require(validCandidate(candidate));
    return votesReceived[candidate];
  }

  function voteForCandidate(bytes32 candidate) public notVotedOne() {
    require(validCandidate(candidate));
    votesReceived[candidate]  += 1;
    alreadyVotedOne[msg.sender] = true;
  }
  
  function voteForSecondCandidate(bytes32 candidate) public notVotedTwo() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedTwo[msg.sender] = true;
    
  }
  
  function voteForThirdCandidate(bytes32 candidate) public notVotedThree() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedThree[msg.sender] = true;
    
  }
  
  function voteForFourthCandidate(bytes32 candidate) public notVotedFour() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedFour[msg.sender] = true;
  }
  
  function voteForFifthCandidate(bytes32 candidate) public notVotedFive() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedFive[msg.sender] = true;
  }
  
  function voteForSixthCandidate(bytes32 candidate) public notVotedSix() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedSix[msg.sender] = true;
  }
  
  function voteForSeventhCandidate(bytes32 candidate) public notVotedSeven() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedSeven[msg.sender] = true;
  }
  
  function voteForEighthCandidate(bytes32 candidate) public notVotedEight() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedEight[msg.sender] = true;
  }
  
 
  function voteForNinethCandidate(bytes32 candidate) public notVotedNine() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedNine[msg.sender] = true;
  }
  
  function voteForTenthCandidate(bytes32 candidate) public notVotedTen() {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
    alreadyVotedTen[msg.sender] = true;
  }

  function validCandidate(bytes32 candidate) view public returns (bool) {
    for(uint i = 0; i < candidateList.length; i++) {
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
   }
}

var Voting = artifacts.require("./Voting.sol");
module.exports = function(deployer) {
  deployer.deploy(Voting, ['option11', 'option12', 'option13', 'option14', 'option21', 'option22', 'option23', 'option24','option31', 'option32', 'option33', 'option34', 'option41', 'option42', 'option43', 'option44', 'option51', 'option52', 'option53', 'option54', 'option61', 'option62', 'option63', 'option64', 'option71', 'option72', 'option73', 'option74', 'option81', 'option82', 'option83', 'option84', 'option91', 'option92', 'option93', 'option94'], {gas: 6700000});
};

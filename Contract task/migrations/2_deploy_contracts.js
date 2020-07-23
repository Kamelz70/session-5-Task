const testcont = artifacts.require("testcont");

module.exports = function(deployer) {
  deployer.deploy(testcont);
};

const { ethers } = require("hardhat");

async function main(){

  const TodoListContract = await ethers.getContractFactory("TodoList");

  const deployedTodoListContract = await TodoListContract.deploy();

  await deployedTodoListContract.deployed();

  console.log("TodoList Contract address:" , deployedTodoListContract.address);

}

main()
.then(() => process.exit(0))
.catch((error) => {
  console.error(error);
  process.exit(1);
});
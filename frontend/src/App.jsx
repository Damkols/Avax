import React from "react";
import myAbi from "../abi.json";
import {
 ConnectWallet,
 useContract,
 useContractRead,
 useContractWrite,
} from "@thirdweb-dev/react";
import { useState } from "react";
import "./App.css";

const App = () => {
 const contractAddress = myAbi.address;
 const abi = myAbi.abi;
 const { contract } = useContract(contractAddress, abi);
 const [valueNum, setValueNum] = useState(0);
 const { data } = useContractRead(contract, "getStoredValue", []);

 const { mutateAsync, isLoading, error } = useContractWrite(
  contract,
  "setStoredValue"
 );

 const handleInput = (e) => {
  const value = e.target.value;

  if (value < 0) {
   return;
  }

  setValueNum(value);
 };

 return (
  <div className="container">
   <h1>Welcome to My Dapp</h1>
   <div>
    <div className="connect-wallet">
     <ConnectWallet
      switchToActiveChain={true}
      dropdownPosition={{
       side: "bottom",
       align: "center",
      }}
     />
    </div>

    <div className="value-section">
     <span>Value: {Number(data)}</span>
    </div>

    <div className="value-section">
     <input
      type="number"
      id="valueNum"
      value={valueNum}
      onChange={handleInput}
     />

     <button
      onClick={async () => {
       try {
        console.log(Number(valueNum));
        await mutateAsync({
         args: [Number(valueNum)],
        });
       } catch (error) {
        console.error(error);
       }
      }}
     >
      Set Value
     </button>
    </div>
   </div>
  </div>
 );
};

export default App;

import React, { useEffect, useState } from "react";
// One Way Binding Yöntemi Deniyor.
function HookExample() {
  //   const [favoriteColor, setFavoriteColor] = useState("red");
  //   const changeFavoriteColor = () => {
  //     setFavoriteColor("blue");
  //   };
  const [counter, setCounter] = useState(0);
  const [counter2, setCounter2] = useState(0);

  useEffect(() => {
    console.log("Constructor builded");
  });
  //   useEffect(() => {
  //     console.log("Render builded");
  //   });
  useEffect(() => {
    console.log("Counter changed to: " + counter);
  }, [counter]);

  useEffect(() => {
    console.log("Counter2 changed to: " + counter2);
  }, [counter2]);

  const incrementCounter = () => {
    setCounter(counter + 1);
  };
  const decrementCounter = () => {
    setCounter(counter - 1);
  };

  return (
    <div>
      {/* <h1>Favorite color is {favoriteColor}</h1>
      <button onClick={changeFavoriteColor}>Change Color</button> */}
      <h1>Counter is {counter}</h1>
      <button onClick={incrementCounter}>+</button>
      <button onClick={decrementCounter}>-</button>
      <button onClick={() => setCounter2(counter2 + 1)}>*</button>
    </div>
  );
}

export default HookExample;

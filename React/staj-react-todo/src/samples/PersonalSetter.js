import React, { useState } from "react";
import PersonalList from "./PersonalList";

function PersonalSetter() {
  const [name, setName] = useState("");
  const [age, setAge] = useState(0);
  //   ilk çözüm
  //   const [foodList, setFoodList] = useState([]);
  const [foodList, setFoodList] = useState();

  const sendData = () => {
    setName("Melih");
    setAge(22);
    setFoodList(["Pizza", "Burger", "Pasta"]);
  };

  return (
    <div>
      <PersonalList name={name} age={age} foodList={foodList} />
      <button onClick={sendData}>Send</button>
    </div>
  );
}

export default PersonalSetter;

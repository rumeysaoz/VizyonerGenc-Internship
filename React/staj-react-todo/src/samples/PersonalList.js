import React from "react";
import FavoriteFoods from "./FavoriteFoods";

function PersonalList({ name, age, foodList }) {
  return (
    <div>
      <h1>
        {name === "" ? "No Name" : name}-{age ? age : "No age"}
      </h1>
      <FavoriteFoods foodList={foodList} />
    </div>
  );
}

export default PersonalList;

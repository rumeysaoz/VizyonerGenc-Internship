import React, { useEffect } from "react";

function FavoriteFoods({ foodList }) {
  useEffect(() => {
    console.log("FavoriteFoods rendered =", foodList);
  }, [foodList]);

  return (
    <div>
      <h1>
        Favorite Foods
        {foodList?.map((food, index) => {
          return <div key={index}>{food}</div>;
        })}
      </h1>
    </div>
  );
}

export default FavoriteFoods;

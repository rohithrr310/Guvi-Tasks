import React, { useState } from "react";
import Wrapper from "./component/Wrapper";

const App = () => {
  let [toggle, setToggle] = useState(true);
  let cardDatas = [
    {
      title: "Earnings (Monthly)",
      value: "$40,000",
      color: "primary",
      icon: "fa-calendar",
      isProgress: false,
    },
    {
      title: "Earnings (Annual)",
      value: "$215,000",
      color: "success",
      icon: "fa-dollar-sign",
      isProgress: false,
    },
    {
      title: "Tasks",
      value: "50",
      color: "info",
      icon: "fa-clipboard-list",
      isProgress: true,
    },
    {
      title: "Pending Requests",
      value: "18",
      color: "warning",
      icon: "fa-comments",
      isProgress: false,
    },
  ];
  window.addEventListener("resize", () => {
    if (window.innerWidth < 600) {
      setToggle(false);
    } else if (window.innerWidth > 600 && window.innerWidth < 768) {
      setToggle(true);
    }
  });
  let handleToggle = () => {
    if (toggle) {
      setToggle(false);
    } else {
      setToggle(true);
    }
  };
  return (
    <div>
      <Wrapper
        cardDatas={cardDatas}
        handleToggle={handleToggle}
        toggle={toggle}
      />
    </div>
  );
};

export default App;

import React from "react";
import Footer from "./Footer";
import Nav from "./Nav";
import Projects from "./Projects";
import Overview from "./Overview";
import Dashboard from "./Dashboard";

const Content = ({ cardDatas, handleToggle }) => {
  return (
    <div id="content-wrapper" className="d-flex flex-column">
      <div id="content">
        <Nav handleToggle={handleToggle} />
        <div className="container-fluid">
          <Dashboard cardDatas={cardDatas} />
          <Overview />
          <Projects />
        </div>
      </div>
      <Footer />
    </div>
  );
};

export default Content;

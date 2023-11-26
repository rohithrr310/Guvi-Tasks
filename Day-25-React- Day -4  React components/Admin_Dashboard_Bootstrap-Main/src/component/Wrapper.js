import React from "react";
import Sidebar from "./Sidebar";
import Content from "./Content";
import Modal from "./Modal";

const Wrapper = ({ cardDatas, toggle, handleToggle }) => {
  return (
    <>
      <div id="wrapper">
        <Sidebar toggle={toggle} handleToggle={handleToggle} />
        <Content cardDatas={cardDatas} handleToggle={handleToggle} />
      </div>

      {/* <!-- Scroll to Top Button--> */}
      <a className="scroll-to-top rounded" href="#page-top">
        <i className="fas fa-angle-up"></i>
      </a>

      {/* <!-- Logout Modal--> */}
      <Modal />
    </>
  );
};

export default Wrapper;

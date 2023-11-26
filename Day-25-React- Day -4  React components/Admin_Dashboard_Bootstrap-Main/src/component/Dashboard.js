import React from "react";
import Card from "./Card";

const Dashboard = ({ cardDatas }) => {
  return (
    <>
      <div className="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 className="h3 mb-0 text-gray-800">Dashboard</h1>
        <a
          href="#!"
          className="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
        >
          <i className="fa fa-download text-white-50"></i> Generate Report
        </a>
      </div>
      <div className="row">
        {cardDatas.map((data, index) => {
          return <Card key={index} data={data} />;
        })}
      </div>
    </>
  );
};

export default Dashboard;

import React from "react";
import { FaCheck, FaTimes } from "react-icons/fa";

const Card2 = () => {
  return (
    <div className="col-lg-4 col-md-6">
      <div className="card mb-5 mb-lg-0">
        <div className="card-body">
          <h5 className="card-title text-muted text-uppercase text-center">
            Plus
          </h5>
          <h6 className="card-price text-center">
            $9<span className="period">/month</span>
          </h6>
          <hr />
          <ul className="fa-ul">
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              <strong>5 Users</strong>
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              50GB Storage
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Unlimited Public Projects
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Community Access
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Unlimited Private Projects
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Dedicated Phone Support
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Free Subdomain
            </li>
            <li className="d-flex align-items-center gap-2 text-muted">
              <FaTimes />
              Monthly Status Reports
            </li>
          </ul>
          <div className="d-grid">
            <button className="btn d-block btn-primary text-uppercase">
              Button
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Card2;

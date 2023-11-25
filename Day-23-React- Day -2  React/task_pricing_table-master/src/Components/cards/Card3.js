import React from "react";
import { FaCheck } from "react-icons/fa";
const Card3 = () => {
  return (
    <div className="col-lg-4 col-md-6">
      <div className="card">
        <div className="card-body">
          <h5 className="card-title text-muted text-uppercase text-center">
            Pro
          </h5>
          <h6 className="card-price text-center">
            $49<span className="period">/month</span>
          </h6>
          <hr />
          <ul>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              <strong>Unlimited Users</strong>
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              150GB Storage
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
              <strong>Unlimited</strong> Subdomains
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Monthly Status Reports
            </li>
          </ul>
          <div className="d-grid">
            <button className="btn  d-block btn-primary text-uppercase">
              Button
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Card3;

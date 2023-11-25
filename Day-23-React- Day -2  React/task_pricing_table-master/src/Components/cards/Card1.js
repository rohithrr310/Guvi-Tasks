import React from "react";
import { FaCheck, FaTimes } from "react-icons/fa";

const Card1 = () => {
  return (
    <div className="col-lg-4  col-md-6">
      <div className="card mb-5 mb-lg-0">
        <div className="card-body">
          <h5 className="card-title text-muted text-uppercase text-center">
            Free
          </h5>
          <h6 className="card-price text-center">
            $0<span className="period">/month</span>
          </h6>
          <hr />
          <ul className="fa-ul">
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Single User
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              5GB Storage
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Unlimited Public Projects
            </li>
            <li className="d-flex align-items-center gap-2">
              <FaCheck />
              Community Access
            </li>
            <li className="d-flex align-items-center gap-2 text-muted">
              <FaTimes />
              Unlimited Private Projects
            </li>
            <li className="d-flex align-items-center gap-2 text-muted">
              <FaTimes />
              Dedicated Phone Support
            </li>
            <li className="d-flex align-items-center gap-2 text-muted">
              <FaTimes />
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

export default Card1;

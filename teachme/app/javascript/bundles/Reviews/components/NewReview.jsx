import React from "react";

const NewReview = props => {
  return (
    <React.Fragment>
      <header>
        <nav className="navbar">
          <div id="menuToggle">
            <input type="checkbox" />
            <span />
            <span />
            <span />
            <ul id="menu">
              <li>
                <a href="index.html">Home</a>
              </li>
              <li>
                <a href="student.html">Student Sign Up</a>
              </li>
              <li>
                <a href="teacher.html">Teacher Sign Up</a>
              </li>
            </ul>
          </div>
          <div className="logout-icon">
            <a href="#">
              <i className="fas fa-sign-out-alt fa-2x" />
            </a>
          </div>
        </nav>
      </header>
      <h3 style={{ padding: "1rem" }}>New Review</h3>
      <form style={{ padding: "1rem" }}>
        <h2>Leave your comments below:</h2>
        <fieldset>
          <legend />
          <textarea cols="100" rows="20" />
          <br />
          <button type="submit" value="Submit">
            Submit
          </button>
        </fieldset>
      </form>
    </React.Fragment>
  );
};

export default NewReview;

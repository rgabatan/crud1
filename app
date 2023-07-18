

import React from 'react';
import './App.css';
import { Routes, Route, Link } from "react-router-dom";
import Home from "./pages/Home";
import Create from "./pages/Create";
import Edit from "./pages/Edit";
import "bootstrap/dist/css/bootstrap.min.css";
// header/nav bar
function App() {
  return (
    <div>
      <nav className="navbar navbar-expand navbar-dark bg-success ">
        <div className="navbar-nav mr-auto">
          <li className="nav-item">
            <Link to={"/"} className="nav-link mx-5 text-white">
              Home
            </Link>
          </li>
        </div>
      </nav>
      <div className="container">
{/* router */}
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/create" element={<Create />} />
          <Route path="/edit/:id" element={<Edit/>}/>
        </Routes>
      </div>
    </div>
  );
}

export default App;

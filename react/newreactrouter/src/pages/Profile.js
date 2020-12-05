import React from 'react';
import { useNavigate, Outlet  } from 'react-router-dom';

function App() {

    const location = useNavigate()
  return (
    <div className="App">
      <h1>Profile
      <button onClick={()=> location('/')}>Painel</button>

      </h1>
      <Outlet/>
    </div>
  );
}

export default App;

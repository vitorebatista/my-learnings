import React from 'react';
import { useParams, useNavigate,  } from 'react-router-dom';

export default function App() {
    const { id } = useParams()
    const location = useNavigate()
  return (
    <div className="App">
      <h1>Param: {id}
      <button onClick={()=> location('/')}>Painel</button>
      </h1>
    </div>
  );
}



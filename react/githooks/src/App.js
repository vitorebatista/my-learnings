import React, { useState, useEffect } from "react";

export default function App() {
  const [repositories, setRepositories] = useState([]);
  const [location, setLocation] = useState({});

  useEffect(() => {
    const watchId = navigator.geolocation.watchPosition(handlePositionReceived);

    return () => navigator.geolocation.clearWatch(watchId)
  }, []);

  function handlePositionReceived({ coords }) {
    const { latitude, longitude } = coords;
    setLocation({ latitude, longitude });
    console.log({ latitude, longitude });
  }
  useEffect(() => {
    async function fetchData() {
      const response = await fetch(
        "https://api.github.com/users/vitorebatista/repos"
      );
      const data = await response.json();
      setRepositories(data);
    }
    fetchData();
  }, []);

  useEffect(() => {
    const filtered = repositories.filter(repo => repo.favorite);
    document.title = `Você tem ${filtered.length}`;
  }, [repositories]);

  function handleFavorite(id) {
    const newRepositories = repositories.map(repo => {
      return repo.id === id ? { ...repo, favorite: !repo.favorite } : repo;
    });
    setRepositories(newRepositories);
  }

  return (
    <>
      Latitude: {location.latitude} <br />
      Longitude: {location.longitude}
      <ul>
        <div className="App">
          {repositories.map(repo => (
            <li key={repo.id}>
              {repo.name}
              {repo.favorite && <span>(favorito)</span>}
              <button onClick={() => handleFavorite(repo.id)}>Favoritar</button>
            </li>
          ))}
        </div>
      </ul>
    </>
  );
}

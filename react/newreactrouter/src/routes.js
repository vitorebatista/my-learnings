import React from 'react';
import { Routes, Route, Link } from 'react-router-dom';

import Dashboard from './pages/Dashboard';
import Profile from './pages/Profile';

export default function MainRoutes() {
    return (
        <Routes>
            <Route path="/" element={<Dashboard />} />
            <Route path="/param/:id" element={<Profile />} />
            <Route path="/profile" element={<Profile />} >
                <Route path='/purchase' element={<h1>Compras</h1>}/>
                <Route path='/password' element={(
                    <>
                        <h1>Alterar senha</h1>
                        <Link to="/profile/purchase">Compras</Link>
                    </>
                )}/>
            </Route>
            <Route path="*" element={<h1>Not Found</h1>} />
        </Routes>
    )
}
import React from 'react';
import { BrowserRouter } from 'react-router-dom';

import Router from './Router';
import Navbar from './components/Navbar';

const App: React.FC = () => {
  return (
    <BrowserRouter>
      <header>
        <Navbar />
      </header>
      <main className="container">
        <Router />
      </main>
    </BrowserRouter>
  );
}

export default App;

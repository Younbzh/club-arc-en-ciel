import { Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import Home from './pages/Home';
import Infos from './pages/Infos';
import Tarifs from './pages/Tarifs';
import Contact from './pages/Contact';

function App() {
  return (
    <div className="min-h-screen text-neutral-100 bg-atmosphere">
      <Navbar />

      <main className="pt-24 pb-16">
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/infos" element={<Infos />} />
          <Route path="/tarifs" element={<Tarifs />} />
          <Route path="/contact" element={<Contact />} />
        </Routes>
      </main>

      <Footer />
    </div>
  );
}

export default App;

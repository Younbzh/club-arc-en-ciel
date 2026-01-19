#!/bin/bash

echo "🔧 Création de l'arborescence..."
mkdir -p src/pages src/components src/styles src/assets

echo "⚙️ Génération des fichiers Tailwind & PostCSS..."
cat > tailwind.config.cjs << 'EOF'
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: { extend: {} },
  plugins: [],
};
EOF

cat > postcss.config.cjs << 'EOF'
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
};
EOF

cat > src/index.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF

echo "📄 Ajout de App.tsx..."
cat > src/App.tsx << 'EOF'
import { Routes, Route } from 'react-router-dom';
import Navbar from './components/Navbar';
import Footer from './components/Footer';
import Home from './pages/Home';
import Infos from './pages/Infos';
import Tarifs from './pages/Tarifs';
import Contact from './pages/Contact';

function App() {
  return (
    <div className="min-h-screen flex flex-col bg-black text-neutral-100">
      <Navbar />
      <main className="flex-1 pt-20 pb-14">
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
EOF

echo "📄 Ajout de main.tsx..."
cat > src/main.tsx << 'EOF'
import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter } from 'react-router-dom';
import App from './App';
import './index.css';

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <React.StrictMode>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </React.StrictMode>
);
EOF

echo "📄 Ajout composant Navbar..."
cat > src/components/Navbar.tsx << 'EOF'
import { NavLink } from 'react-router-dom';

const navItems = [
  { to: '/', label: 'Accueil' },
  { to: '/infos', label: 'Infos & Ambiance' },
  { to: '/tarifs', label: 'Tarifs' },
  { to: '/contact', label: 'Contact & Réservation' },
];

function Navbar() {
  return (
    <header className="fixed inset-x-0 top-0 z-40 bg-black/30 backdrop-blur-md border-b border-white/10">
      <div className="mx-auto max-w-6xl px-4 py-4 flex justify-between items-center">
        <div className="text-xl font-bold text-yellow-400">Club Libertin</div>
        <nav className="hidden md:flex gap-6">
          {navItems.map((item) => (
            <NavLink
              key={item.to}
              to={item.to}
              className={({ isActive }) =>
                isActive
                  ? 'text-yellow-400 font-semibold'
                  : 'text-neutral-300 hover:text-white transition'
              }
            >
              {item.label}
            </NavLink>
          ))}
        </nav>
      </div>
    </header>
  );
}

export default Navbar;
EOF

echo "📄 Ajout composant Footer..."
cat > src/components/Footer.tsx << 'EOF'
function Footer() {
  return (
    <footer className="border-t border-white/10 bg-black/40 py-6">
      <div className="mx-auto max-w-6xl px-4 text-xs text-neutral-500">
        Maquette non contractuelle — à personnaliser selon votre club.
      </div>
    </footer>
  );
}

export default Footer;
EOF

echo "📄 Ajout composant Hero..."
cat > src/components/Hero.tsx << 'EOF'
type HeroProps = { title: string; subtitle: string; highlight?: string };

function Hero({ title, subtitle, highlight }: HeroProps) {
  return (
    <section className="mx-auto max-w-6xl px-4 pt-16 pb-12">
      {highlight && (
        <span className="text-[10px] text-yellow-400 uppercase tracking-wide">
          {highlight}
        </span>
      )}

      <h1 className="text-4xl font-bold text-white mt-2">{title}</h1>
      <p className="text-neutral-400 mt-4 max-w-xl">{subtitle}</p>
    </section>
  );
}

export default Hero;
EOF

echo "📄 Ajout composant Section..."
cat > src/components/Section.tsx << 'EOF'
import { ReactNode } from 'react';

type SectionProps = {
  id?: string;
  title: string;
  eyebrow?: string;
  description?: string;
  children?: ReactNode;
};

function Section({ id, title, eyebrow, description, children }: SectionProps) {
  return (
    <section id={id} className="mx-auto max-w-6xl px-4 py-10">
      {eyebrow && (
        <span className="text-[10px] text-yellow-400 uppercase tracking-wider">
          {eyebrow}
        </span>
      )}
      <h2 className="text-2xl font-bold text-white mt-2">{title}</h2>
      {description && (
        <p className="text-neutral-400 mt-2 max-w-2xl">{description}</p>
      )}
      <div className="mt-6">{children}</div>
    </section>
  );
}

export default Section;
EOF

echo "📄 Ajout pages..."

cat > src/pages/Home.tsx << 'EOF'
import Hero from '../components/Hero';
import Section from '../components/Section';

function Home() {
  return (
    <div>
      <Hero
        title="Une expérience libertine chic & discrète."
        subtitle="Maquette illustrative moderne et élégante pour clubs libertins."
        highlight="Maquette Premium"
      />

      <Section
        title="Ambiance & esprit du club"
        description="Une présentation élégante et rassurante de votre club, à personnaliser."
      >
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div className="bg-white/5 p-4 rounded-2xl border border-white/10">Ambiance chic</div>
          <div className="bg-white/5 p-4 rounded-2xl border border-white/10">Respect & règles</div>
          <div className="bg-white/5 p-4 rounded-2xl border border-white/10">Sélection à l'entrée</div>
        </div>
      </Section>
    </div>
  );
}

export default Home;
EOF

cat > src/pages/Infos.tsx << 'EOF'
import Section from '../components/Section';

function Infos() {
  return (
    <Section
      title="Informations pratiques"
      description="Localisation, horaires, dress-code et règles."
    >
      <p className="text-neutral-300 text-sm">
        Cette page sera personnalisée selon les informations officielles.
      </p>
    </Section>
  );
}

export default Infos;
EOF

cat > src/pages/Tarifs.tsx << 'EOF'
import Section from '../components/Section';

function Tarifs() {
  return (
    <Section
      title="Tarifs indicatifs"
      description="Tarifs standard selon les profils : couples, femmes seules, hommes seuls."
    >
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white/5 p-4 rounded-2xl border border-white/10">Couple</div>
        <div className="bg-white/5 p-4 rounded-2xl border border-white/10">Femme seule</div>
        <div className="bg-white/5 p-4 rounded-2xl border border-white/10">Homme seul</div>
      </div>
    </Section>
  );
}

export default Tarifs;
EOF

cat > src/pages/Contact.tsx << 'EOF'
import Section from '../components/Section';

function Contact() {
  return (
    <Section
      title="Contact & réservation"
      description="Formulaire illustratif sans envoi réel."
    >
      <div className="bg-white/5 p-4 rounded-2xl border border-white/10">
        Formulaire à intégrer ici…
      </div>
    </Section>
  );
}

export default Contact;
EOF

echo "🎉 Template complet généré avec succès !"

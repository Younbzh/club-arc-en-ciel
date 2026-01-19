#!/bin/bash
set -e

echo "✨ Upgrade design: chic / velours / champagne / sweet..."

# Ensure folders exist
mkdir -p src/pages src/components src/styles src/assets

echo "🎨 Writing src/index.css (theme + components styles)..."
cat > src/index.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  html { scroll-behavior: smooth; }
  body { @apply antialiased; }
}

@layer components {
  /* Background atmosphere */
  .bg-atmosphere {
    background:
      radial-gradient(1000px circle at 15% 0%, rgba(214,179,94,0.16), transparent 55%),
      radial-gradient(900px circle at 85% 10%, rgba(233,176,202,0.10), transparent 55%),
      radial-gradient(800px circle at 50% 110%, rgba(255,255,255,0.04), transparent 60%),
      linear-gradient(to bottom, #07060B, #0B0A10 35%, #07060B);
  }

  /* Premium glass / velvet cards */
  .glass {
    @apply rounded-3xl border border-white/10 bg-white/[0.06] backdrop-blur-xl;
    box-shadow: 0 22px 55px rgba(0,0,0,0.55);
  }

  .glass-soft {
    @apply rounded-3xl border border-white/10 bg-white/[0.05] backdrop-blur-xl;
    box-shadow: 0 18px 45px rgba(0,0,0,0.45);
  }

  .halo {
    background: radial-gradient(circle at top, rgba(214,179,94,0.10), transparent 60%);
  }

  .rose-halo {
    background: radial-gradient(circle at top, rgba(233,176,202,0.10), transparent 60%);
  }

  /* Typography helpers */
  .eyebrow {
    @apply inline-flex items-center gap-2 text-[10px] uppercase tracking-[0.22em] text-[#E7D29A];
  }

  .muted {
    @apply text-neutral-300/90;
  }

  /* Buttons */
  .btn-primary {
    @apply inline-flex items-center justify-center rounded-full px-6 py-3 text-sm font-semibold text-black transition;
    background: linear-gradient(90deg, #D6B35E, #C89E4A);
    box-shadow: 0 18px 40px rgba(0,0,0,0.55);
  }
  .btn-primary:hover { filter: brightness(1.07); }

  .btn-ghost {
    @apply inline-flex items-center justify-center rounded-full px-6 py-3 text-sm font-semibold text-neutral-100 transition;
    background: rgba(255,255,255,0.05);
    border: 1px solid rgba(255,255,255,0.12);
  }
  .btn-ghost:hover {
    border-color: rgba(214,179,94,0.50);
    color: #E7D29A;
  }

  /* Inputs */
  .input {
    @apply w-full rounded-2xl border border-white/10 bg-black/40 px-3 py-2.5 text-sm text-neutral-100 placeholder:text-neutral-500 focus:outline-none;
  }
  .input:focus { border-color: rgba(214,179,94,0.55); }
}
EOF

echo "🧱 Writing src/App.tsx (atmosphere background + layout)..."
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
EOF

echo "🧭 Writing Navbar.tsx (lighter + elegant)..."
cat > src/components/Navbar.tsx << 'EOF'
import { NavLink } from 'react-router-dom';

const navItems = [
  { to: '/', label: 'Accueil' },
  { to: '/infos', label: 'Ambiance & Règles' },
  { to: '/tarifs', label: 'Tarifs' },
  { to: '/contact', label: 'Contact' },
];

function Navbar() {
  return (
    <header className="fixed inset-x-0 top-0 z-50">
      <div className="mx-auto max-w-6xl px-4 pt-4">
        <div className="glass-soft flex items-center justify-between px-5 py-3">
          <div className="flex items-center gap-3">
            <div className="h-10 w-10 rounded-2xl bg-white/5 border border-white/10 flex items-center justify-center">
              <span className="text-[#E7D29A] font-semibold">A</span>
            </div>
            <div className="leading-tight">
              <div className="text-[10px] uppercase tracking-[0.22em] text-neutral-300/80">Club privé</div>
              <div className="text-base font-semibold text-white">L’Angelus</div>
            </div>
          </div>

          <nav className="hidden md:flex items-center gap-6">
            {navItems.map((item) => (
              <NavLink
                key={item.to}
                to={item.to}
                className={({ isActive }) =>
                  [
                    'text-sm transition',
                    isActive ? 'text-[#E7D29A]' : 'text-neutral-200/80 hover:text-white',
                  ].join(' ')
                }
              >
                {item.label}
              </NavLink>
            ))}
          </nav>

          <div className="hidden md:flex items-center gap-3">
            <a className="btn-ghost" href="#reservation">Découvrir</a>
            <a className="btn-primary" href="#reservation">Réserver</a>
          </div>

          <div className="md:hidden">
            <a className="btn-primary px-4 py-2 text-xs" href="#reservation">Réserver</a>
          </div>
        </div>
      </div>
    </header>
  );
}

export default Navbar;
EOF

echo "🧩 Writing Footer.tsx (fine + premium)..."
cat > src/components/Footer.tsx << 'EOF'
function Footer() {
  return (
    <footer className="border-t border-white/10 bg-black/20">
      <div className="mx-auto max-w-6xl px-4 py-8 flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
        <p className="text-xs text-neutral-400/80">
          Maquette illustrative — non contractuelle. Objectif : montrer un rendu moderne, chic et rassurant.
        </p>
        <p className="text-xs text-neutral-400/80">
          Style : velours, champagne, douceur — adapté à un club haut de gamme.
        </p>
      </div>
    </footer>
  );
}

export default Footer;
EOF

echo "🌟 Writing Hero.tsx (more emotional + refined)..."
cat > src/components/Hero.tsx << 'EOF'
type HeroProps = {
  title: string;
  subtitle: string;
  highlight?: string;
};

function Hero({ title, subtitle, highlight }: HeroProps) {
  return (
    <section className="mx-auto max-w-6xl px-4 pt-8">
      <div className="glass halo overflow-hidden">
        <div className="p-7 md:p-10 relative">
          <div className="absolute inset-0 opacity-70 rose-halo" />
          <div className="relative space-y-5">
            {highlight && (
              <div className="eyebrow">
                <span className="h-1.5 w-1.5 rounded-full bg-[#E7D29A]" />
                <span>{highlight}</span>
              </div>
            )}

            <h1 className="text-3xl md:text-5xl font-semibold tracking-tight text-white">
              {title}
            </h1>

            <p className="muted text-sm md:text-base leading-relaxed max-w-2xl">
              {subtitle}
            </p>

            <div className="flex flex-wrap gap-3 pt-2">
              <a className="btn-primary" href="#reservation">Découvrir les soirées</a>
              <a className="btn-ghost" href="#ambiance">Voir l’esprit du club</a>
            </div>

            <div className="flex flex-wrap gap-4 pt-3 text-xs text-neutral-300/80">
              <div className="flex items-center gap-2">
                <span className="h-1.5 w-1.5 rounded-full bg-[#E7D29A]" />
                <span>Chic • douceur • discrétion</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="h-1.5 w-1.5 rounded-full bg-pink-200/60" />
                <span>Consentement & respect</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Hero;
EOF

echo "🧱 Writing Section.tsx (spacing + elegance)..."
cat > src/components/Section.tsx << 'EOF'
import type { ReactNode } from 'react';

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
      <div className="space-y-3">
        {eyebrow && <div className="eyebrow">{eyebrow}</div>}
        <h2 className="text-xl md:text-2xl font-semibold tracking-tight text-white">{title}</h2>
        {description && (
          <p className="muted text-sm leading-relaxed max-w-3xl">{description}</p>
        )}
      </div>

      {children && <div className="mt-7">{children}</div>}
    </section>
  );
}

export default Section;
EOF

echo "🏠 Writing Home.tsx (Angelus: chic + sweet)..."
cat > src/pages/Home.tsx << 'EOF'
import Hero from '../components/Hero';
import Section from '../components/Section';

function Home() {
  return (
    <div className="space-y-8">
      <Hero
        title="L’Angelus — l’élégance sensuelle, tout en douceur"
        subtitle="Une maquette de modernisation pensée pour sublimer l’atmosphère du club : design plus actuel, plus rassurant, plus premium. L’objectif est d’inspirer confiance… et d’éveiller la curiosité."
        highlight="Maquette de modernisation — non contractuelle"
      />

      <Section
        id="ambiance"
        eyebrow="Atmosphère"
        title="Un lieu feutré, chic, délicatement sucré"
        description="Ici, le raffinement passe par la lumière, les matières, le silence juste ce qu’il faut… et une communication claire. Cette section montre un style plus haut de gamme que l’existant, tout en restant fidèle à l’esprit du club."
      >
        <div className="grid gap-5 md:grid-cols-3">
          <div className="glass p-6 halo">
            <h3 className="text-sm font-semibold text-white">Chaleur & discrétion</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Un cadre confidentiel, accueillant, pensé pour se sentir à l’aise dès les premières minutes.
            </p>
          </div>
          <div className="glass p-6 rose-halo">
            <h3 className="text-sm font-semibold text-white">Élégance & douceur</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Un ton plus “sweet”, plus enveloppant — sans jamais tomber dans le vulgaire ou l’agressif.
            </p>
          </div>
          <div className="glass p-6 halo">
            <h3 className="text-sm font-semibold text-white">Respect & consentement</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Des règles simples, visibles, rassurantes : c’est ce qui attire les bons profils.
            </p>
          </div>
        </div>
      </Section>

      <Section
        eyebrow="Soirées"
        title="Mettre en valeur les soirées (sans surcharge)"
        description="Sur beaucoup de sites anciens, on a du texte partout et aucune hiérarchie. Ici, on fait l’inverse : quelques cartes propres, lisibles, et une envie immédiate d’en savoir plus."
      >
        <div className="grid gap-5 md:grid-cols-3">
          {[
            {
              t: 'Soirée Couples',
              d: 'Ambiance élégante, complice, sans pression. Idéal pour découvrir le club.',
              tag: 'Chic & feutré',
            },
            {
              t: 'Soirée Mixte',
              d: 'Une dynamique plus vivante, tout en gardant les codes et le respect.',
              tag: 'Convivial',
            },
            {
              t: 'Soirée à thème',
              d: 'Une touche de jeu et d’imaginaire, avec tenue conseillée et ambiance immersive.',
              tag: 'Sweet & glamour',
            },
          ].map((x) => (
            <div key={x.t} className="glass p-6">
              <div className="eyebrow">{x.tag}</div>
              <h3 className="mt-2 text-sm font-semibold text-white">{x.t}</h3>
              <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">{x.d}</p>
              <div className="mt-5 text-xs text-neutral-300/70 flex items-center justify-between">
                <span>Exemple</span>
                <span className="text-[#E7D29A]">Voir détails →</span>
              </div>
            </div>
          ))}
        </div>
      </Section>

      <Section
        id="reservation"
        eyebrow="Réservation"
        title="Un parcours simple, moderne, rassurant"
        description="Le gérant doit sentir, en 10 secondes, que ce site est au niveau d’un établissement premium : lisible, beau, mobile-friendly, et pensé pour convertir."
      >
        <div className="glass p-7 md:p-8">
          <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
            <div>
              <h3 className="text-base font-semibold text-white">Envie de découvrir L’Angelus ?</h3>
              <p className="mt-1 text-sm text-neutral-300/90">
                Dans une version finale, ce bouton ouvrirait une réservation ou un contact réel.
              </p>
            </div>
            <div className="flex flex-wrap gap-3">
              <a className="btn-primary" href="/contact">Demande de réservation</a>
              <a className="btn-ghost" href="/infos">Voir les règles</a>
            </div>
          </div>
        </div>
      </Section>
    </div>
  );
}

export default Home;
EOF

echo "ℹ️ Writing Infos.tsx..."
cat > src/pages/Infos.tsx << 'EOF'
import Section from '../components/Section';

function Infos() {
  return (
    <div className="space-y-6">
      <Section
        eyebrow="L’esprit"
        title="Ambiance, codes et discrétion"
        description="Une page claire et élégante, pensée pour rassurer immédiatement. C’est souvent là que les sites vieillissants perdent les visiteurs : trop de texte, trop de flou, pas assez de confiance."
      >
        <div className="grid gap-5 md:grid-cols-2">
          <div className="glass p-6 halo">
            <h3 className="text-sm font-semibold text-white">Discrétion avant tout</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Accès, accueil et ambiance pensés pour la confidentialité. Les clients doivent sentir qu’ils sont
              dans un lieu soigné, sécurisé et respectueux.
            </p>
          </div>
          <div className="glass p-6 rose-halo">
            <h3 className="text-sm font-semibold text-white">Chic, douceur, respect</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Une communication plus “sweet” et raffinée attire les bons profils : couples, femmes seules, habitués
              exigeants… et éloigne naturellement les comportements déplacés.
            </p>
          </div>
        </div>
      </Section>

      <Section
        eyebrow="Règles"
        title="Un cadre clair = plus de qualité"
        description="Des règles visibles, simples et bien formulées augmentent la confiance… et la qualité des soirées."
      >
        <div className="grid gap-5 md:grid-cols-3">
          <div className="glass p-6">
            <h3 className="text-sm font-semibold text-white">Consentement</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Le consentement est la base : chacun est libre, sans insistance, sans pression.
            </p>
          </div>
          <div className="glass p-6">
            <h3 className="text-sm font-semibold text-white">Dress-code</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Tenue soignée demandée — pour préserver l’élégance et l’harmonie du lieu.
            </p>
          </div>
          <div className="glass p-6">
            <h3 className="text-sm font-semibold text-white">Sélection</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              L’accès est encadré pour conserver un équilibre et une ambiance premium.
            </p>
          </div>
        </div>
      </Section>
    </div>
  );
}

export default Infos;
EOF

echo "💶 Writing Tarifs.tsx..."
cat > src/pages/Tarifs.tsx << 'EOF'
import Section from '../components/Section';

function Tarifs() {
  return (
    <div className="space-y-6">
      <Section
        eyebrow="Tarifs"
        title="Une présentation premium, simple, lisible"
        description="Les montants sont indicatifs : l’intérêt de la maquette est de montrer une mise en page moderne, élégante et rassurante (au lieu d’un bloc de texte)."
      >
        <div className="grid gap-5 md:grid-cols-3">
          <div className="glass p-6 halo">
            <div className="eyebrow">Couples</div>
            <h3 className="mt-2 text-base font-semibold text-white">Formule Couple</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              La formule centrale du club. Ambiance équilibrée, idéale pour une expérience chic et complice.
            </p>
            <div className="mt-5 text-sm text-[#E7D29A] font-semibold">€€ — à personnaliser</div>
          </div>

          <div className="glass p-6 rose-halo">
            <div className="eyebrow">Femmes seules</div>
            <h3 className="mt-2 text-base font-semibold text-white">Accueil privilégié</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Mise en confiance, liberté totale, cadre respectueux. Un pilier de l’ambiance du club.
            </p>
            <div className="mt-5 text-sm text-[#E7D29A] font-semibold">Conditions avantageuses</div>
          </div>

          <div className="glass p-6 halo">
            <div className="eyebrow">Hommes seuls</div>
            <h3 className="mt-2 text-base font-semibold text-white">Accès encadré</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Sur sélection / soirées dédiées afin de préserver l’équilibre et l’élégance des soirées.
            </p>
            <div className="mt-5 text-sm text-[#E7D29A] font-semibold">Sur sélection</div>
          </div>
        </div>
      </Section>

      <Section
        eyebrow="Note"
        title="Ce que cette page démontre"
        description="Sur un site vieillissant, les tarifs font souvent “liste”. Ici, ils deviennent une vitrine premium. Le gérant voit immédiatement la différence."
      />
    </div>
  );
}

export default Tarifs;
EOF

echo "📩 Writing Contact.tsx..."
cat > src/pages/Contact.tsx << 'EOF'
import Section from '../components/Section';

function Contact() {
  return (
    <div className="space-y-6">
      <Section
        eyebrow="Contact"
        title="Réservation & informations"
        description="Formulaire illustratif : dans une vraie version, il serait relié à l’e-mail du club, un CRM ou un module de réservation."
      >
        <div className="grid gap-6 md:grid-cols-2">
          <div className="glass p-7">
            <div className="space-y-4">
              <div>
                <label className="block text-xs text-neutral-300/80 mb-1">Nom / pseudo</label>
                <input className="input" placeholder="Votre nom" />
              </div>

              <div>
                <label className="block text-xs text-neutral-300/80 mb-1">E-mail</label>
                <input className="input" type="email" placeholder="contact@email.com" />
              </div>

              <div>
                <label className="block text-xs text-neutral-300/80 mb-1">Message</label>
                <textarea className="input" rows={4} placeholder="Date souhaitée, question, demande..." />
              </div>

              <p className="text-[11px] text-neutral-400/80 leading-relaxed">
                Maquette visuelle : aucun message n’est envoyé. Dans une refonte, ce bloc devient un vrai parcours de conversion.
              </p>

              <button type="button" className="btn-primary w-full">
                Envoyer (maquette)
              </button>
            </div>
          </div>

          <div className="glass p-7 rose-halo">
            <h3 className="text-base font-semibold text-white">Informations pratiques</h3>
            <p className="mt-2 text-sm text-neutral-300/90 leading-relaxed">
              Cette zone peut afficher : adresse, accès, horaires, téléphone, consignes. Le but : rassurer, simplifier,
              et éviter que le visiteur quitte le site.
            </p>

            <div className="mt-5 space-y-2 text-sm text-neutral-300/90">
              <div>📍 Adresse du club</div>
              <div>📞 Téléphone</div>
              <div>🕘 Horaires</div>
              <div>🧥 Dress-code</div>
            </div>

            <div className="mt-6 border-t border-white/10 pt-4 text-[11px] text-neutral-400/80">
              Conseil : une phrase courte sur la discrétion & la confidentialité augmente fortement la confiance.
            </div>
          </div>
        </div>
      </Section>
    </div>
  );
}

export default Contact;
EOF

echo "✅ Upgrade terminé."
echo "➡️ Lance: npm run dev"
EOF

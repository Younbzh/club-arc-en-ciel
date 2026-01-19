#!/bin/bash
set -e

echo "✨ Installation du TEMPLATE DUPLICABLE — Boudoir Premium Libertin"

# Create folders
mkdir -p src/config src/pages src/components

###########################################
# 1. SITE CONFIG (the only file to modify per club)
###########################################
echo "🧠 Writing siteConfig.ts..."
cat > src/config/siteConfig.ts << 'EOF'
export const siteConfig = {
  clubName: "L’Angelus",
  city: "Saint-Étienne",
  positioning: "Club libertin chic & confidentiel",

  tone: {
    keywords: ["boudoir", "raffiné", "doux", "discret", "élégant"],
    promise:
      "Une atmosphère feutrée et rassurante, pensée pour inspirer confiance et éveiller la curiosité.",
  },

  audience: {
    primary: "Couples",
    secondary: "Femmes seules",
    conditions:
      "Accès encadré afin de préserver l’équilibre et la qualité des soirées.",
  },

  strategy: {
    goal:
      "Créer un sentiment immédiat de confort, de discrétion et de qualité dès les premières secondes.",
    explanation:
      "Les choix visuels privilégient la douceur, la lisibilité et la hiérarchie afin d’éviter toute surcharge cognitive.",
  },

  disclaimer:
    "Maquette illustrative non contractuelle. Cette proposition vise à illustrer le potentiel d’une refonte moderne.",
};
EOF

###########################################
# 2. INDEX.CSS (Boudoir atmosphere)
###########################################
echo "🎨 Writing index.css..."
cat > src/index.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  body {
    @apply antialiased;
    background:
      radial-gradient(900px at 20% 0%, rgba(214,179,94,0.12), transparent 55%),
      radial-gradient(900px at 80% 10%, rgba(233,176,202,0.12), transparent 60%),
      linear-gradient(to bottom, #07060B, #0C0B11 40%, #07060B);
    color: #F5F3EF;
  }
}

@layer components {
  .glass {
    @apply rounded-3xl border border-white/10 bg-white/[0.06] backdrop-blur-xl;
    box-shadow: 0 25px 60px rgba(0,0,0,0.6);
  }

  .gold-halo {
    background: radial-gradient(circle at top, rgba(214,179,94,0.18), transparent 65%);
  }

  .rose-halo {
    background: radial-gradient(circle at top, rgba(233,176,202,0.18), transparent 65%);
  }

  .eyebrow {
    @apply text-[10px] uppercase tracking-[0.25em] text-[#E6D39A];
  }

  .btn-primary {
    @apply rounded-full px-6 py-3 text-sm font-semibold text-black transition;
    background: linear-gradient(90deg, #E6C36A, #C89E4A);
    box-shadow: 0 18px 40px rgba(0,0,0,0.5);
  }

  .btn-primary:hover { filter: brightness(1.08); }
}
EOF

###########################################
# 3. NAVBAR
###########################################
echo "🧭 Writing Navbar.tsx..."
cat > src/components/Navbar.tsx << 'EOF'
import { NavLink } from 'react-router-dom';
import { siteConfig } from '../config/siteConfig';

function Navbar() {
  return (
    <header className="fixed inset-x-0 top-0 z-50">
      <div className="mx-auto max-w-6xl px-4 pt-4">
        <div className="glass flex items-center justify-between px-5 py-3">
          <div>
            <div className="text-[10px] uppercase tracking-[0.22em] text-neutral-300/80">
              Club privé
            </div>
            <div className="text-base font-semibold text-white">
              {siteConfig.clubName}
            </div>
          </div>

          <nav className="hidden md:flex items-center gap-6">
            <NavLink to="/" className="hover:text-[#E6D39A] transition">Accueil</NavLink>
            <NavLink to="/infos" className="hover:text-[#E6D39A] transition">Infos</NavLink>
            <NavLink to="/tarifs" className="hover:text-[#E6D39A] transition">Tarifs</NavLink>
            <NavLink to="/contact" className="hover:text-[#E6D39A] transition">Contact</NavLink>
          </nav>
        </div>
      </div>
    </header>
  );
}

export default Navbar;
EOF

###########################################
# 4. FOOTER
###########################################
echo "🕯️ Writing Footer.tsx..."
cat > src/components/Footer.tsx << 'EOF'
import { siteConfig } from '../config/siteConfig';

function Footer() {
  return (
    <footer className="border-t border-white/10 bg-black/30">
      <div className="mx-auto max-w-6xl px-4 py-8 text-xs text-neutral-400/80 leading-relaxed">
        {siteConfig.disclaimer}
      </div>
    </footer>
  );
}

export default Footer;
EOF

###########################################
# 5. HERO
###########################################
echo "🌟 Writing Hero.tsx..."
cat > src/components/Hero.tsx << 'EOF'
import { siteConfig } from '../config/siteConfig';

type HeroProps = {
  title?: string;
  subtitle?: string;
  highlight?: string;
};

function Hero({
  title = `${siteConfig.clubName} — une élégance feutrée, tout en douceur`,
  subtitle = siteConfig.tone.promise,
  highlight = "Proposition moderne — style boudoir",
}: HeroProps) {
  return (
    <section className="mx-auto max-w-6xl px-4 pt-10">
      <div className="glass rose-halo p-8 md:p-12">
        <div className="eyebrow mb-4">{highlight}</div>

        <h1 className="text-3xl md:text-5xl font-semibold text-white leading-tight">
          {title}
        </h1>

        <p className="mt-4 text-sm md:text-base text-neutral-300 max-w-2xl leading-relaxed">
          {subtitle}
        </p>
      </div>
    </section>
  );
}

export default Hero;
EOF

###########################################
# 6. SECTION
###########################################
echo "📄 Writing Section.tsx..."
cat > src/components/Section.tsx << 'EOF'
import type { ReactNode } from 'react';

type SectionProps = {
  id?: string;
  eyebrow?: string;
  title: string;
  description?: string;
  children?: ReactNode;
};

function Section({ id, eyebrow, title, description, children }: SectionProps) {
  return (
    <section id={id} className="mx-auto max-w-6xl px-4 py-12 space-y-6">
      {eyebrow && <div className="eyebrow">{eyebrow}</div>}
      <h2 className="text-2xl font-semibold text-white">{title}</h2>

      {description && (
        <p className="text-neutral-300 text-sm max-w-3xl leading-relaxed">{description}</p>
      )}

      {children && <div className="pt-3">{children}</div>}
    </section>
  );
}

export default Section;
EOF

###########################################
# 7. HOME — DUPLICABLE VERSION
###########################################
echo "🏠 Writing Home.tsx..."
cat > src/pages/Home.tsx << 'EOF'
import Hero from '../components/Hero';
import Section from '../components/Section';
import { siteConfig } from '../config/siteConfig';

function Home() {
  return (
    <div className="space-y-16">
      <Hero />

      <Section
        eyebrow="Ambiance"
        title={`L’essence de ${siteConfig.clubName}`}
        description="Cette section met en valeur l’atmosphère du club ainsi que la logique émotionnelle qui guide le visiteur dès les premières secondes. L’objectif est d’exprimer douceur, raffinement et discrétion sans surcharge visuelle."
      >
        <div className="grid gap-6 md:grid-cols-3">
          <div className="glass gold-halo p-6">
            <h3 className="text-sm font-semibold">Chaleur visuelle immédiate</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Les teintes champagne et rosées instaurent une atmosphère cosy, qui rassure le visiteur
              et l’aide à se projeter dans l’expérience.
            </p>
          </div>
          <div className="glass rose-halo p-6">
            <h3 className="text-sm font-semibold">Discrétion maîtrisée</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              La sobriété visuelle évite l’agressivité souvent présente dans les sites vieillissants.
              Ici, tout respire l’intimité respectueuse.
            </p>
          </div>
          <div className="glass gold-halo p-6">
            <h3 className="text-sm font-semibold">Élégance boudoir</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              L’utilisation du flou, des halos et du verre dépoli crée un sentiment premium,
              similaire aux codes de l’hôtellerie confidentielle.
            </p>
          </div>
        </div>
      </Section>
    </div>
  );
}

export default Home;
EOF

echo "🎉 TEMPLATE DUPLICABLE installé avec succès !"
echo "👉 Lance : npm run dev"
EOF

#!/bin/bash
set -e

echo "🕯️ Boudoir modern upgrade — élégance, douceur, psychologie..."

mkdir -p src/pages src/components

# =======================
# INDEX.CSS — BOUDOIR
# =======================
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

  .soft-halo {
    background: radial-gradient(circle at top, rgba(233,176,202,0.18), transparent 65%);
  }

  .gold-halo {
    background: radial-gradient(circle at top, rgba(214,179,94,0.18), transparent 65%);
  }

  .eyebrow {
    @apply text-[10px] uppercase tracking-[0.25em] text-[#E6D39A];
  }

  .btn-primary {
    @apply rounded-full px-6 py-3 text-sm font-semibold text-black transition;
    background: linear-gradient(90deg, #E6C36A, #C89E4A);
    box-shadow: 0 18px 40px rgba(0,0,0,0.5);
  }

  .btn-primary:hover {
    filter: brightness(1.08);
  }
}
EOF

# =======================
# HOME.TSX — EXPLICATIVE
# =======================
cat > src/pages/Home.tsx << 'EOF'
import Hero from '../components/Hero';
import Section from '../components/Section';

function Home() {
  return (
    <div className="space-y-14">
      <Hero
        title="L’Angelus — une élégance feutrée, tout en douceur"
        subtitle="Cette proposition visuelle met l’accent sur une atmosphère boudoir moderne : chaleureuse, rassurante et élégante. L’objectif est de créer, dès les premières secondes, un sentiment de confort et de curiosité."
        highlight="Proposition de modernisation — approche émotionnelle"
      />

      <Section
        eyebrow="Ambiance"
        title="Créer une sensation de confiance immédiate"
        description="Le choix de couleurs sombres, de matières douces et de lumières diffuses permet de rassurer instantanément le visiteur. Cette approche est particulièrement efficace dans l’univers libertin, où la discrétion et le confort émotionnel sont essentiels."
      >
        <div className="grid gap-6 md:grid-cols-3">
          <div className="glass p-6 gold-halo">
            <h3 className="text-sm font-semibold">Chaleur visuelle</h3>
            <p className="mt-2 text-sm text-neutral-300">
              Des teintes champagne et rosées remplacent les contrastes durs afin de créer une atmosphère enveloppante.
            </p>
          </div>

          <div className="glass p-6 soft-halo">
            <h3 className="text-sm font-semibold">Intimité suggérée</h3>
            <p className="mt-2 text-sm text-neutral-300">
              Le design suggère l’intimité sans jamais la montrer frontalement, ce qui renforce le sentiment d’élégance.
            </p>
          </div>

          <div className="glass p-6 gold-halo">
            <h3 className="text-sm font-semibold">Discrétion assumée</h3>
            <p className="mt-2 text-sm text-neutral-300">
              La hiérarchie visuelle calme et épurée évite toute sensation de site “bruyant” ou agressif.
            </p>
          </div>
        </div>
      </Section>

      <Section
        eyebrow="Parcours utilisateur"
        title="Guider sans brusquer"
        description="Cette section illustre un principe clé : un site moderne ne surcharge pas d’informations. Il guide subtilement, étape par étape, en laissant le visiteur libre de son rythme."
      >
        <div className="glass p-7 soft-halo">
          <p className="text-sm text-neutral-300 leading-relaxed">
            En réduisant volontairement le volume de texte visible et en structurant clairement les sections,
            on améliore la lisibilité et l’engagement. Le visiteur comprend rapidement l’esprit du lieu
            sans se sentir noyé sous l’information.
          </p>
        </div>
      </Section>
    </div>
  );
}

export default Home;
EOF

echo "✨ Boudoir version installée"

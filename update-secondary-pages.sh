#!/bin/bash
set -e

echo "✨ Mise à jour des pages Infos / Tarifs / Contact en version Boudoir Premium Explicative"

mkdir -p src/pages

###############################################
# INFOS.TSX — Version boudoir + explicative
###############################################
echo "📄 Updating Infos.tsx..."
cat > src/pages/Infos.tsx << 'EOF'
import Section from '../components/Section';
import { siteConfig } from '../config/siteConfig';

function Infos() {
  return (
    <div className="space-y-16">
      <Section
        eyebrow="Ambiance"
        title={`L’atmosphère de ${siteConfig.clubName}`}
        description="Cette section met en avant l’importance d’une atmosphère travaillée : lumière, rythme visuel, douceur et hiérarchie. L’objectif est d’expliquer en quoi une ambiance soignée rassure immédiatement le visiteur et renvoie l’image d’un lieu géré avec attention."
      >
        <div className="grid gap-6 md:grid-cols-2">
          <div className="glass gold-halo p-6">
            <h3 className="text-sm font-semibold">Une atmosphère feutrée et accueillante</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Les jeux de dégradés, d’ombres douces et de couleurs chaleureuses servent à construire une
              impression de confort visuel. Cette perception joue un rôle clé dans la mise en confiance des visiteurs.
            </p>
          </div>

          <div className="glass rose-halo p-6">
            <h3 className="text-sm font-semibold">Lisibilité et discrétion</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Une mise en page simple et structurée permet d’éviter la confusion, très présente sur les sites
              plus anciens. Ici, l’objectif est de clarifier le fonctionnement du club avec élégance et douceur.
            </p>
          </div>
        </div>
      </Section>

      <Section
        eyebrow="Esprit du lieu"
        title="L’équilibre entre douceur, élégance et respect"
        description="Cette partie montre au lecteur qu’un club moderne s’appuie sur un cadre clair, explicite et bienveillant. Cela rassure les nouveaux visiteurs et renforce la qualité globale de l’expérience."
      >
        <div className="grid gap-6 md:grid-cols-3">
          <div className="glass p-6 gold-halo">
            <h3 className="text-sm font-semibold">Consentement fluide</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Un rappel simple et visuel renforce l’idée d’un espace où tout se fait naturellement, sans insistance.
            </p>
          </div>

          <div className="glass p-6 rose-halo">
            <h3 className="text-sm font-semibold">Dress-code élégant</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Les visiteurs comprennent immédiatement que le club valorise les codes de l’élégance et du raffinement.
            </p>
          </div>

          <div className="glass p-6 gold-halo">
            <h3 className="text-sm font-semibold">Équilibre social maîtrisé</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Une sélection subtile, expliquée simplement, renvoie l’image d’un lieu sérieux, harmonieux et agréable.
            </p>
          </div>
        </div>
      </Section>
    </div>
  );
}

export default Infos;
EOF

###############################################
# TARIFS.TSX — Version boudoir + explicative
###############################################
echo "💶 Updating Tarifs.tsx..."
cat > src/pages/Tarifs.tsx << 'EOF'
import Section from '../components/Section';
import { siteConfig } from '../config/siteConfig';

function Tarifs() {
  return (
    <div className="space-y-16">
      <Section
        eyebrow="Tarifs"
        title="Une présentation moderne, lisible, premium"
        description="Dans cette maquette, les tarifs ne sont pas présentés comme une liste brute mais comme des éléments valorisants. 
        Le but est de montrer comment une mise en forme élégante modifie la perception du visiteur : simplicité, clarté et qualité."
      >
        <div className="grid gap-6 md:grid-cols-3">

          <div className="glass gold-halo p-6">
            <div className="eyebrow">{siteConfig.audience.primary}</div>
            <h3 className="mt-3 text-base font-semibold">Formule Couple</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Une présentation soignée rend les tarifs plus attractifs, plus crédibles 
              et renforce l’image haut de gamme du club.
            </p>
            <div className="mt-5 text-sm text-[#E6D39A] font-semibold">
              Exemple de tarif — personnalisable
            </div>
          </div>

          <div className="glass rose-halo p-6">
            <div className="eyebrow">{siteConfig.audience.secondary}</div>
            <h3 className="mt-3 text-base font-semibold">Accueil privilégié</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Une mise en avant visuelle douce montre l’attention portée à cette clientèle, ce qui améliore immédiatement la confiance.
            </p>
            <div className="mt-5 text-sm text-[#E6D39A] font-semibold">
              Exemple — conditions avantageuses
            </div>
          </div>

          <div className="glass gold-halo p-6">
            <div className="eyebrow">Sélection</div>
            <h3 className="mt-3 text-base font-semibold">Hommes seuls</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Présenter clairement les conditions d’accès permet d’éviter les mauvaises interprétations 
              et valorise le sérieux du club.
            </p>
            <div className="mt-5 text-sm text-[#E6D39A] font-semibold">
              Sur sélection — exemple
            </div>
          </div>

        </div>
      </Section>

      <Section
        eyebrow="Note stratégique"
        title="Pourquoi cette présentation fonctionne"
        description="Un affichage premium augmente la valeur perçue. Le but de la maquette n’est pas de donner un tarif exact, 
        mais d’illustrer la manière dont une présentation élégante influence positivement la perception du visiteur."
      />
    </div>
  );
}

export default Tarifs;
EOF

###############################################
# CONTACT.TSX — Version boudoir + explicative
###############################################
echo "📩 Updating Contact.tsx..."
cat > src/pages/Contact.tsx << 'EOF'
import Section from '../components/Section';
import { siteConfig } from '../config/siteConfig';

function Contact() {
  return (
    <div className="space-y-16">
      <Section
        eyebrow="Contact"
        title="Un espace moderne, rassurant et clair"
        description="Le formulaire illustratif montre comment une mise en page douce et élégante rend l'étape de contact plus accessible. 
        Le visiteur comprend que tout est simple, fluide et discret."
      >
        <div className="grid gap-6 md:grid-cols-2">

          <div className="glass p-7 rose-halo">
            <h3 className="text-base font-semibold text-white">Formulaire de contact</h3>

            <div className="mt-5 space-y-4">
              <div>
                <label className="block text-xs text-neutral-300 mb-1">Nom / pseudo</label>
                <input className="w-full rounded-2xl bg-black/40 border border-white/10 px-3 py-2 text-sm text-neutral-100" placeholder="Votre nom" />
              </div>

              <div>
                <label className="block text-xs text-neutral-300 mb-1">Email</label>
                <input className="w-full rounded-2xl bg-black/40 border border-white/10 px-3 py-2 text-sm text-neutral-100" type="email" placeholder="email@exemple.com" />
              </div>

              <div>
                <label className="block text-xs text-neutral-300 mb-1">Message</label>
                <textarea className="w-full rounded-2xl bg-black/40 border border-white/10 px-3 py-2 text-sm text-neutral-100" rows={4} placeholder="Votre demande..." />
              </div>

              <button className="btn-primary w-full">Envoyer (maquette)</button>

              <p className="text-[11px] text-neutral-400 leading-relaxed">
                Ce formulaire est illustratif : dans une version finale, chaque message serait réellement envoyé.
              </p>
            </div>
          </div>

          <div className="glass p-7 gold-halo">
            <h3 className="text-base font-semibold text-white">Informations utiles</h3>
            <p className="mt-2 text-sm text-neutral-300 leading-relaxed">
              Cette zone sert à rassurer et orienter : adresse, accès, horaires, spécificités. 
              Elle montre comment un design élégant permet de structurer clairement les informations essentielles.
            </p>

            <div className="mt-5 space-y-2 text-sm text-neutral-300">
              <div>📍 Adresse du club (exemple)</div>
              <div>📞 Téléphone (exemple)</div>
              <div>🕘 Horaires habituels</div>
              <div>🧥 Dress-code recommandé</div>
            </div>

            <div className="mt-6 border-t border-white/10 pt-4 text-[11px] text-neutral-400">
              Un rappel subtil sur la confidentialité renforce la sensation de sérieux et de discrétion.
            </div>
          </div>

        </div>
      </Section>
    </div>
  );
}

export default Contact;
EOF

echo "🎉 Mise à jour terminée !"
echo "👉 Lance : npm run dev"
EOF

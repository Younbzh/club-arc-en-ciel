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

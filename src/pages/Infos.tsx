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

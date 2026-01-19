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

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

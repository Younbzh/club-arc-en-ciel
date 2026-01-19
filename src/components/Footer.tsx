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

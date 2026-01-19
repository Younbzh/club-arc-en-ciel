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

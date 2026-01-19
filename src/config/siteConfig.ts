// 📁 src/config/siteConfig.ts
export const siteConfig = {
  clubName: "Club Arc-en-Ciel",
  city: "Caen",
  positioning: "Spa libertin & soirées festives — Élégance, convivialité et respect",
  accentMode: "dark" as "dark" | "light",

  tone: {
    keywords: [
      "élégant",
      "chaleureux",
      "festif",
      "doux",
      "lumineux",
      "convivial",
      "discret"
    ],
    promise:
      "Une combinaison unique de détente spa et d'ambiance club, dans un cadre moderne, respectueux et accueillant.",
  },

  hero: {
    title: "Bienvenue au Club Arc-en-Ciel",
    subtitle: "Spa libertin & soirées festives à Caen",
    tagline: "Où vos désirs prennent vie dans une atmosphère raffinée",
    cta: "Découvrir nos espaces"
  },

  audience: {
    primary: "Couples",
    secondary: "Femmes seules",
    conditions:
      "Accès hommes seuls sur créneaux dédiés ou selon sélection, afin de préserver l'équilibre et la qualité des expériences.",
  },

  spaces: [
    {
      title: "Spa Voluptueux",
      emoji: "💦",
      description: "Hammam, sauna et jacuzzis pour une détente sensuelle",
      details: "Plongez dans nos eaux chaudes et laissez-vous envelopper par la vapeur..."
    },
    {
      title: "Dancefloor Envoûtant",
      emoji: "✨",
      description: "Ambiance festive et musique enivrante",
      details: "Les lumières tamisées, la musique, les corps qui se frôlent..."
    },
    {
      title: "Alcôves Intimes",
      emoji: "🛋️",
      description: "Espaces privés joliment décorés",
      details: "Des salons intimistes pour vos moments de complicité"
    }
  ],

  values: [
    { text: "Consentement mutuel", icon: "💝" },
    { text: "Discrétion absolue", icon: "🔒" },
    { text: "Hygiène irréprochable", icon: "✨" },
    { text: "Dress code élégant", icon: "👗" },
    { text: "Ambiance respectueuse", icon: "🌹" }
  ],

  events: [
    {
      title: "Soirées Couples",
      schedule: "Samedis soir",
      description: "Une nuit exclusive pour les couples complices",
      atmosphere: "Dress code élégant, ambiance raffinée et sensuelle"
    },
    {
      title: "Soirées Pluralité",
      schedule: "Vendredis",
      description: "Couples et célibataires sélectionnés",
      atmosphere: "Thèmes différents chaque semaine"
    }
  ],

  pricing: {
    couples: [
      { label: "Entrée standard", price: "50€", note: "Vendredi" },
      { label: "Soirée couple", price: "60€", note: "Samedi" }
    ],
    singles: [
      { label: "Hommes seuls", price: "40€", note: "Créneaux dédiés" },
      { label: "Femmes seules", price: "Gratuit", note: "Toutes soirées" }
    ],
    includes: "Open bar soft drinks, vestiaire, serviettes"
  },

  contact: {
    address: {
      street: "123 Rue Example",
      city: "14000 Caen",
      region: "Normandie"
    },
    phone: "02 XX XX XX XX",
    email: "contact@arcenciel.fr",
    hours: [
      { day: "Vendredi", time: "21h - 3h" },
      { day: "Samedi", time: "22h - 4h" }
    ],
    parking: "Parking privé et sécurisé"
  },

  strategy: {
    goal:
      "Renforcer l'image élégante et moderne du club, tout en mettant en avant la diversité des expériences (spa, hammam, soirées, rencontres).",
    explanation:
      "Une présentation visuelle plus claire et plus premium permet au visiteur de comprendre rapidement les différents espaces, les règles essentielles, et l'ambiance conviviale du lieu.",
  },

  disclaimer:
    "Maquette illustrative non contractuelle, destinée à montrer le potentiel d'une version moderne du site.",
};

// 📁 src/styles/theme.css
/*
:root {
  --color-primary: #f59e0b; // amber-500
  --color-secondary: #f43f5e; // rose-500
  --color-accent: #fbbf24; // amber-400
  
  --gradient-primary: linear-gradient(135deg, #f59e0b 0%, #f43f5e 100%);
  --gradient-secondary: linear-gradient(135deg, #fbbf24 0%, #fb923c 100%);
  
  --glow-amber: 0 0 40px rgba(251, 191, 36, 0.15);
  --glow-rose: 0 0 40px rgba(244, 63, 94, 0.15);
}
*/

// Utilisez Tailwind directement pour le styling
// Les couleurs principales : amber-300/400/500/600 et rose-300/400/500/600
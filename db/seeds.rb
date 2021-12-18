# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if !Category.exists?
  Category.create en: 'noun',         de: 'Nomen',        ru: 'существительное'
  Category.create en: 'adjective',    de: 'Adjektiv',     ru: 'прилагательное'
  Category.create en: 'verb',         de: 'Verb',         ru: 'глагол'
  Category.create en: 'pronoun',      de: 'Pronomen',     ru: 'местоимение'
  Category.create en: 'numeral',      de: 'Numerale',     ru: 'числительное'
  Category.create en: 'adverb',       de: 'Adverb',       ru: 'наречие'
  Category.create en: 'article',      de: 'Artikel',      ru: 'артикль'
  Category.create en: 'pretext',      de: 'Präposition',  ru: 'предлог'
  Category.create en: 'union',        de: 'Konjuktion',   ru: 'союз'
  Category.create en: 'particle',     de: 'Partikel',     ru: 'частица'
  Category.create en: 'interjection', de: 'Interjektion', ru: 'междометие'
  Category.create en: 'expression',   de: 'Ausdruck',     ru: 'выражение'
  Category.create en: 'personal pronoun', de: 'Personalpronomen', ru: 'личное местоимение'
end

category = Category.find_by en: 'personal pronoun'
Entry.create category_id: category.id, de: 'ich', en: 'I',    ru: 'я',  trxn: 'iç'
Entry.create category_id: category.id, de: 'du',  en: 'you',  ru: 'ты', trxn: 'du:'
Entry.create category_id: category.id, de: 'Sie', en: 'You',  ru: 'Вы', trxn: 'zi:'
Entry.create category_id: category.id, de: 'er',  en: 'he',   ru: 'он'
Entry.create category_id: category.id, de: 'sie', en: 'she',  ru: 'она'
Entry.create category_id: category.id, de: 'es',  en: 'it',   ru: 'оно'
Entry.create category_id: category.id, de: 'wir', en: 'we',   ru: 'мы'
Entry.create category_id: category.id, de: 'ihr', en: 'you',  ru: 'вы'
Entry.create category_id: category.id, de: 'sie', en: 'they', ru: 'они'

# Verbs
category = Category.find_by en: 'verb'
Entry.create category_id: category.id, de: 'arbeiten',       en: 'work',        ru: 'работать'
Entry.create category_id: category.id, de: 'haben',          en: 'have',        ru: 'иметь'
Entry.create category_id: category.id, de: 'sein',           en: 'be',          ru: 'быть'
Entry.create category_id: category.id, de: 'wohnen',         en: 'reside',      ru: 'проживать'
Entry.create category_id: category.id, de: 'heißen',         en: 'be called',   ru: 'зваться'
Entry.create category_id: category.id, de: 'buchstabieren',  en: 'spell',       ru: 'произносить по буквам'
Entry.create category_id: category.id, de: 'müchten',        en: 'would like',  ru: 'хотеть бы'
Entry.create category_id: category.id, de: 'leben',          en: 'live',        ru: 'жить'
Entry.create category_id: category.id, de: 'sprechen',       en: 'speak',       ru: 'говорить'
Entry.create category_id: category.id, de: 'studieren',      en: 'study',       ru: 'учиться (в ВУЗе)'
Entry.create category_id: category.id, de: 'warten',         en: 'wait',        ru: 'ждать, ожидать'
Entry.create category_id: category.id, de: 'werden',         en: 'become',      ru: 'становиться'
Entry.create category_id: category.id, de: 'lernen',         en: 'learn',       ru: 'учить, учиться'
Entry.create category_id: category.id, de: 'entschuldigen',  en: 'apologize',   ru: 'извинять'
Entry.create category_id: category.id, de: 'antworten',      en: 'reply',       ru: 'отвечать'
Entry.create category_id: category.id, de: 'bieten',         en: 'ask',         ru: 'спрашивать'
Entry.create category_id: category.id, de: 'fahren',         en: 'drive',       ru: 'ехать'
Entry.create category_id: category.id, de: 'funktionieren',  en: 'function',    ru: 'работать'
Entry.create category_id: category.id, de: 'können',         en: 'can',         ru: 'мочь, быть в состоянии'

# Nouns
category = Category.find_by en: 'noun'
Entry.create category_id: category.id, article: 'das', de: 'Alter',    pl: 'Alter',       en: 'age',        ru: 'возраст'
Entry.create category_id: category.id, article: 'der', de: 'Beruf',    pl: 'Berufe',      en: 'profession', ru: 'профессия'
Entry.create category_id: category.id, article: 'das', de: 'Beispiel', pl: 'Beispiele',   en: 'example',    ru: 'пример'
Entry.create category_id: category.id, article: 'das', de: 'Verb',     pl: 'Verben',      en: 'verb',       ru: 'глагол'
Entry.create category_id: category.id, article: 'das', de: 'Nomen',    pl: 'Nomen',       en: 'noun',       ru: 'существительное'
Entry.create category_id: category.id, article: 'das', de: 'Auto',     pl: 'Autos',       en: 'car',        ru: 'автомобиль'
Entry.create category_id: category.id, article: 'das', de: 'Foto',     pl: 'Fotos',       en: 'photo',      ru: 'фотография'
Entry.create category_id: category.id, article: 'der', de: 'Stuhle',   pl: 'Stühle',      en: 'chair',      ru: 'стул'
Entry.create category_id: category.id, article: 'die', de: 'Lampe',    pl: 'Lampen',      en: 'lamp',       ru: 'лампа'
Entry.create category_id: category.id, article: 'das', de: 'Haus',     pl: 'die Häuser',  en: 'house',      ru: 'дом'
Entry.create category_id: category.id, article: 'der', de: 'Tisch',    pl: 'Tische',      en: 'table',      ru: 'стол'

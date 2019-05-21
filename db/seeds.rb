# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

Role.delete_all
puts "roles deleted"
Article.delete_all
puts "articles deleted"
User.delete_all
puts "users deleted"


# users: name, email
puts "creating users..."
austen = User.create(
  name: "Jane Austen",
  email: "jane@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
bronte = User.create(
  name: "Emily Bronte",
  email: "emily@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
cervantes = User.create(
  name: "Miguel de Cervantes",
  email: "mikec@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
darwin = User.create(
  name: "Charles Darwin",
  email: "charles@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
dickens = User.create(
  name: "Charles Dickens",
  email: "cdickens@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
eliot = User.create(
  name: "George Eliot",
  email: "mevans@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
gibran = User.create(
  name: "Khalil Gibran",
  email: "kgibran@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
gilman = User.create(
  name: "Charlotte Perkins Gilman",
  email: "charlotte@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
homer = User.create(
  name: "Homer",
  email: "homer@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
hugo = User.create(
  name: "Victor Hugo",
  email: "victor@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
joyce = User.create(
  name: "James Joyce",
  email: "james@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
kafka = User.create(
  name: "Franz Kafka",
  email: "franz@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
melville = User.create(
  name: "Herman Melville",
  email: "moby@hotmail.com",
  password_digest: "#{BCrypt::Password.create('whale')}"
)
shelley = User.create(
  name: "Mary Shelley",
  email: "mary@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
stoker = User.create(
  name: "Bram Stoker",
  email: "bram@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
thoreau = User.create(
  name: "Henry David Thoreau",
  email: "henry@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
twain = User.create(
  name: "Mark Twain",
  email: "mark@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
wharton = User.create(
  name: "Edith Wharton",
  email: "ed@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
whitman = User.create(
  name: "Walt Whitman",
  email: "ww@gmail.com",
  password_digest: "#{BCrypt::Password.create('pass')}"
)
puts "users created!"
puts "creating articles..."

# articles: text, headline, dek, post_date, img_src, importance
# edit serializer to provide this data
dracula = ""
dubliners = ""
emma = ""
ethan_frome = ""
frankenstein = ""
great_expectations = ""
iliad = ""
huck_finn = ""
leaves_grass = ""
les_mis = ""
mansfield_park = ""
metamorphosis = ""
middlemarch = ""
moby_dick = ""
odyssey = ""
origin_species = ""
pride_prejudice =""
prophet = ""
quixote = ""
ulysses = ""
two_cities = ""
walden = ""
wuthering_hts = ""
yellow_wallpaper = ""

moby = Article.create(
  text: "Call me Ishmael. Some years ago—never mind how long precisely—having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world. It is a way I have of driving off the spleen and regulating the circulation. Whenever I find myself growing grim about the mouth; whenever it is a damp, drizzly November in my soul; whenever I find myself involuntarily pausing before coffin warehouses, and bringing up the rear of every funeral I meet; and especially whenever my hypos get such an upper hand of me, that it requires a strong moral principle to prevent me from deliberately stepping into the street, and methodically knocking people’s hats off—then, I account it high time to get to sea as soon as I can. This is my substitute for pistol and ball. With a philosophical flourish Cato throws himself upon his sword; I quietly take to the ship. There is nothing surprising in this. If they but knew it, almost all men in their degree, some time or other, cherish very nearly the same feelings towards the ocean with me.",
  headline: "Moby Dick; or, The Whale",
  post_date: DateTime.new(1851)
)

middlemarch = Article.create(
  text: "Miss Brooke had that kind of beauty which seems to be thrown into relief by poor dress. Her hand and wrist were so finely formed that she could wear sleeves not less bare of style than those in which the Blessed Virgin appeared to Italian painters; and her profile as well as her stature and bearing seemed to gain the more dignity from her plain garments, which by the side of provincial fashion gave her the impressiveness of a fine quotation from the Bible,—or from one of our elder poets,—in a paragraph of to-day's newspaper. She was usually spoken of as being remarkably clever, but with the addition that her sister Celia had more common-sense. Nevertheless, Celia wore scarcely more trimmings; and it was only to close observers that her dress differed from her sister's, and had a shade of coquetry in its arrangements; for Miss Brooke's plain dressing was due to mixed conditions, in most of which her sister shared. The pride of being ladies had something to do with it: the Brooke connections, though not exactly aristocratic, were unquestionably 'good:' if you inquired backward for a generation or two, you would not find any yard-measuring or parcel-tying forefathers—anything lower than an admiral or a clergyman; and there was even an ancestor discernible as a Puritan gentleman who served under Cromwell...",
  headline: "Middlemarch",
  post_date: DateTime.new(1871)
)

prophet = Article.create(
  text: "Almustafa, the chosen and the beloved, who was a dawn unto his own day, had waited twelve years in the city of Orphalese for his ship that was to return and bear him back to the isle of his birth. And in the twelfth year, on the seventh day of Ielool, the month of reaping, he climbed the hill without the city walls and looked seaward; and he beheld his ship coming with the mist. Then the gates of his heart were flung open, and his joy flew far over the sea. And he closed his eyes and prayed in the silences of his soul. But as he descended the hill, a sadness came upon him, and he thought in his heart: How shall I go in peace and without sorrow? Nay, not without a wound in the spirit shall I leave this city. Long were the days of pain I have spent within its walls, and long were the nights of aloneness; and who can depart from his pain and his aloneness without regret? Too many fragments of the spirit have I scattered in these streets, and too many are the children of my longing that walk naked among these hills, and I cannot withdraw from them without a burden and an ache. It is not a garment I cast off this day, but a skin that I tear with my own hands. Nor is it a thought I leave behind me, but a heart made sweet with hunger and with thirst.",
  headline: "The Prophet",
  post_date: DateTime.new(1923)
)

puts "articles created!"
puts "remember to generate some role relationships!"



puts "finished seeding!"

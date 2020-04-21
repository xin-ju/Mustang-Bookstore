# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
book1 = Book.create!(
  title: 'The Lost Man',
  author: 'Jane Harper',
  genre: 'Mystery',
  price: 16.99,
  rating: 4.7,
  overview: 'Two brothers meet for the first time in months at the remote fence line separating their cattle ranches deep in the Australian outback—where their third brother lies dead at their feet. With no sign of foul play and a victim with seemingly everything to live for, eldest brother Nathan starts his search to understand what led his brother Cameron to his fate. With a brutal climate and formidable landscape looming over the story, Nathan will wade through haunting urban legends and be forced to reckon with his family’s own secret history of violence.
  Just when you think you have all the pieces in place, this slow burn thriller will casually rebut all your theories, keeping you guessing until the very end. Thoroughly atmospheric and filled with compelling characters, this is a story that stays with you long after you finish reading.'
)

book2 = Book.create!(
  title: 'Little Women',
  author: 'Louisa May Alcott',
  genre: 'Classic',
  price: 8.95,
  rating: 3.3,
  overview: 'It is no secret that Alcott based Little Women on her own early life. While her father, the freethinking reformer and abolitionist Bronson Alcott, hobnobbed with such eminent male authors as Emerson, Thoreau, and Hawthorne, Louisa supported herself and her sisters with “woman’s work,” including sewing, doing laundry, and acting as a domestic servant. But she soon discovered she could make more money writing. Little Women brought her lasting fame and fortune,
  and far from being the “girl’s book” her publisher requested, it explores such timeless themes as love and death, war and peace, the conflict between personal ambition and family responsibilities, and the clash of cultures between Europe and America.'
)

book3 = Book.create!(
  title: 'The Witch Elm',
  author: 'Tana French',
  genre: 'Mystery',
  price: 17.00,
  rating: 3.6,
  overview: 'Toby is a happy-go-lucky charmer who’s dodged a scrape at work and is celebrating with friends when the night takes a turn that will change his life—he surprises two burglars who beat him and leave him for dead. Struggling to recover from his injuries, beginning to understand that he might never be the same man again, he takes refuge at his family’s ancestral home to care for his dying uncle Hugo. Then a skull is found in the trunk of an elm tree in the garden—and as detectives close in,
  Toby is forced to face the possibility that his past may not be what he has always believed.'
)

book4 = Book.create!(
  title: 'The Boy',
  author: 'Tami Hoag',
  genre: 'Mystery',
  price: 16.00,
  rating: 4.7,
  overview: 'When Detective Nick Fourcade enters the home of Genevieve Gauthier outside the sleepy town of Bayou Breaux, Louisiana, the bloody crime scene that awaits him is both the most brutal and the most confusing he has ever seen. Genevieves seven-year-old son, KJ, has been murdered by an alleged intruder, yet Genevieve is alive and well. Meanwhile, Nicks wife, Detective Annie Broussard, sits with the grieving Genevieve. A mother herself, Annie understands the devastation this woman is going through, but as a detective she is troubled:
  Who would murder a child and leave the only witness behind?'
)

book5 = Book.create!(
  title: 'Emma',
  author: 'Jane Austen',
  genre: 'Classic',
  price: 7.95,
  rating: 4.1,
  overview: 'Emma Woodhouse is a wealthy, exquisite, and thoroughly self-deluded young woman who has "lived in the world with very little to distress or vex her."'
)

book6 = Book.create!(
  title: 'The City in the Middle of the Night',
  author: 'Charlie Jane Anders',
  genre: 'Sci-Fi & Fantasy',
  price: 16.99,
  rating: 3.8,
  overview: 'Humanity clings to life on January—a colonized planet divided between permanently frozen darkness on one side, and blazing endless sunshine on the other. Two cities, built long ago in the meager temperate zone, serve as the last bastions of civilization—but life inside them is just as dangerous as the uninhabitable wastelands outside.
  Sophie, a young student from the wrong side of Xiosphant city, is exiled into the dark after being part of a failed revolution. But she survives—with the help of a mysterious savior from beneath the ice. Burdened with a dangerous, painful secret, Sophie and her ragtag group of exiles face the ultimate challenge—and they are running out of time.'
)

book7 = Book.create!(
  title: 'Dune',
  author: 'Frank Herbert',
  genre: 'Sci-Fi & Fantasy',
  price: 9.99,
  rating: 4.6,
  overview: 'Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides—who would become known as Muad’Dib—and of a great family’s ambition to bring to fruition humankind’s most ancient and unattainable dream.'
)

book8 = Book.create!(
  title: 'A Tale of Two Cities',
  author: 'Charles Dickens',
  genre: 'Classic',
  price: 6.95,
  rating: 4.0,
  overview: 'One of Dickens’s most exciting novels, A Tale of Two Cities is a stirring classic of love, revenge, and resurrection.'
)

book9 = Book.create!(
  title: 'Pride and Prejudice',
  author: 'Jane Austen',
  genre: 'Classic',
  price: 6.95,
  rating: 3.6,
  overview: 'Humorous and profound, and filled with highly entertaining dialogue, this witty comedy of manners dips and turns through drawing-rooms and plots to reach an immensely satisfying finale. In the words of Eudora Welty, Pride and Prejudice is as "irresistible and as nearly flawless as any fiction could be."'
)

book10 = Book.create!(
  title: 'The Daughter of Sherlock Holmes: A Mystery',
  author: 'Leonard Goldberg',
  genre: 'Mystery',
  price: 16.99,
  rating: 4.6,
  overview: '1914. Joanna Blalock’s keen mind and incredible insight lead her to become a highly-skilled nurse, one of the few professions that allow her to use her finely-tuned brain. But when she and her ten-year-old son witness a man fall to his death, apparently by suicide, they are visited by the elderly Dr. John Watson and his charming, handsome son, Dr. John Watson Jr. Impressed by her forensic skills, they invite her to become the third member of their investigative team.
  Caught up in a Holmesian mystery that spans from hidden treasure to the Second Afghan War of 1878-1880, Joanna and her companions must devise an ingenious plan to catch a murderer in the act while dodging familiar culprits, Scotland Yard, and members of the British aristocracy. Unbeknownst to her, Joanna harbors a mystery of her own.
  The product of a one-time assignation between the now dead Sherlock Holmes and Irene Adler, the only woman to ever outwit the famous detective, Joanna has unwittingly inherited her parents’ deductive genius.'
)

book11 = Book.create!(
  title: 'Labyrinth',
  author: 'Catherine Coulter',
  genre: 'Mystery',
  price: 16.99,
  rating: 4.5,
  overview: 'On a Tuesday afternoon, Agent Sherlock is driving in downtown Washington when her Volvo is suddenly T-boned at an intersection. As her car spins out of control, a man’s body slams against her windshield and then—blackness. When she finally regains consciousness in the hospital, she’s told about the accident and the man she struck.
  No one knows yet who he is or where he is because he ran away. From DNA, they discover his name is Justice Cummings and he’s a CIA analyst at Langley...and he’s still missing.'
)

book12 = Book.create!(
  title: 'Sense and Sensibility',
  author: 'Jane Austen',
  genre: 'Classic',
  price: 5.95,
  rating: 4.1,
  overview: 'Jane Austen’s first published novel, Sense and Sensibility is a wonderfully entertaining tale of flirtation and folly that revolves around two starkly different sisters, Elinor and Marianne Dashwood. While Elinor is thoughtful, considerate, and calm, her younger sister is emotional and wildly romantic.
  Both are looking for a husband, but neither Elinor’s reason nor Marianne’s passion can lead them to perfect happiness—as Marianne falls for an unscrupulous rascal and Elinor becomes attached to a man who’s already engaged.'
)

book13 = Book.create!(
  title: 'House of Earth and Blood',
  author: 'Sarah J. Maas',
  genre: 'Sci-Fi & Fantasy',
  price: 22.40,
  rating: 4.7,
  overview: 'Bryce Quinlan had the perfect life—working hard all day and partying all night—until a demon murdered her closest friends, leaving her bereft, wounded, and alone. When the accused is behind bars but the crimes start up again, Bryce finds herself at the heart of the investigation.
  She’ll do whatever it takes to avenge their deaths.'
)

book14 = Book.create!(
  title: 'Fahrenheit 451: A Novel',
  author: 'Ray Bradbury',
  genre: 'Sci-Fi & Fantasy',
  price: 12.75,
  rating: 4.0,
  overview: 'Guy Montag is a fireman. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.”
  But when he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television, Montag begins to question everything he has ever known.'
)

book15 = Book.create!(
  title: 'Gods of Jade and Shadow',
  author: 'Silvia Moreno-Garcia',
  genre: 'Sci-Fi & Fantasy',
  price: 14.40,
  rating: 4.6,
  overview: 'The Mayan god of death sends a young woman on a harrowing, life-changing journey in this dark, one-of-a-kind fairy tale inspired by Mexican folklore.'
)

book16 = Book.create!(
  title: 'The Splendid and the Vile: A Saga of Churchill, Family, and Defiance During the Blitz',
  author: 'Erik Larson',
  genre: 'Nonfiction',
  price: 25.60,
  rating: 4.6,
  overview: 'On Winston Churchills first day as prime minister, Adolf Hitler invaded Holland and Belgium. Poland and Czechoslovakia had already fallen, and the Dunkirk evacuation was just two weeks away. For the next twelve months, Hitler would wage a relentless bombing campaign,
  killing 45,000 Britons. It was up to Churchill to hold his country together and persuade President Franklin Roosevelt that Britian was a worthy ally-and willing to fight to the end.'
)

book17 = Book.create!(
  title: 'Sapiens: A Brief History of Humankind',
  author: 'Yuval Noah Harari',
  genre: 'Nonfiction',
  price: 24.99,
  rating: 4.0,
  overview: 'One hundred thousand years ago, at least six different species of humans inhabited Earth. Yet today ther is only one-homo sapiens. What happened to the others? And what may happen to us?'
)

book18 = Book.create!(
  title: 'Say Nothing: A True Story of Murder and Memory in Northern Ireland',
  author: 'Patrick Radden Keefe',
  genre: 'Nonfiction',
  price: 16.95,
  rating: 4.6,
  overview: 'In December 1972, Jean McConville, a thirty-eight-year-old mother of ten, was dragged from her Belfast home by masked intruders, her children clinging to her legs. They never saw her again. Her abduction was one of the most notorious episodes of the vicious conflict knon as The Troubles.
  Everyone in the neighborhood knew the I.R.A was responsible. But in a climate of fear and paranoia, no one would speak of it. In 2003, five years after an accord brought an uneasy peace to Northern Ireland, a set of human bones was discovered on a beach. McConvilles children knew it was their mother whne they were told a blue safety pin was
  attached to her dress- with so many kids, she always kept it handy for diapers or ripped clothes.'
)

book19 = Book.create!(
  title: 'Maybe You Should Talk to Someone: A Therapist, Her Therapist, and Our Lives Revealed',
  author: 'Lori Gottlieb',
  genre: 'Nonfiction',
  price: 28.00,
  rating: 4.8,
  overview: 'One day, Lori Gottlieb is a therapist who helps patients in her Los Angeles practice. The next, a crisis causes her world to come crashing down. Enter Wendell, the quirky but seasoned therapist in whose office she suddenly lands. With his balding head, cardigan, and khakis, he seems to have come straight from Therapist Central Casting.
  Yet he will turn out anything but.'
)

book20 = Book.create!(
  title: 'Midnight in Chernobyl: The Untold Story of the Worlds Greates Nuclear Disaster',
  author: 'Adam Higginbotham',
  genre: 'Nonfiction',
  price: 19.00,
  rating: 4.7,
  overview: 'Early in the morning of April 26, 1986, Reactor Number Four of the Chernobyl Atomic Energy Station eploded, triggering one of the twentieth centurys greatest disasters. In the thirty years since then, Chernobyl has become lodged in the collective nightmares of the world:
  shorthand for the spectral horrors of radiation poisoning, for a dangerous technology slipping its leash, for the ecological fragility, and for what can happen when a dishonest and careless state endangers its citizens and the entire world. But the real story of the accident, clouded from the 
  begninning by secrecy, propaganda, and misinformation, has long remained in dispute.'
)

u1 = User.create!(
    email: 'alice@gmail.com',
    password: 'password',
    admin: 'True',
    username: 'Alice'
)

u2 = User.create!(
    email: 'bob@gmail.com',
    password: 'password',
    admin: 'False',
    username: 'Bob'
)
u3 = User.create!(
    email: 'cody@gmail.com',
    password: 'password',
    admin: 'False',
    username: 'Cody'
)

u4 = User.create!(
    email: 'daniel@gmail.com',
    password: 'password',
    admin: 'False',
    username: 'Daniel'
)
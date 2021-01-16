# frozen_string_literal: true

User.create(email:"luffy@onepiece.com",name:"luffy",password:"123456",roles:"site_admin")
User.create(email:"zorro@onepiece.com",name:"zorro",password:"123456")
User.create(email:"sanji@onepiece.com",name:"sanji",password:"123456")
User.create(email:"jinbei@onepiece.com",name:"jinbei",password:"123456")
User.create(email:"robin@onepiece.com",name:"robin",password:"123456")

puts "Users created #{User.all.count}"

Topic.create(title:"HTML")
Topic.create(title:"Ruby")
Topic.create(title:"Rails")

puts  "Topics created #{Topic.all.count}"

Blog.create(
  title: "My Blog Post 1",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 1,
  author_id:1
)
  Blog.create(
  title: "My Blog Post 2",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 2,
  author_id:2
  )

  Blog.create(
  title: "My Blog Post 3",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 3,
  author_id:3
  )

  Blog.create(
  title: "My Blog Post 4",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 1,
  author_id:4
  )

  Blog.create(
  title: "My Blog Post 5",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 2,
  author_id:5
  )

  Blog.create(
  title: "My Blog Post 6",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 3,
  author_id:1
  )

  Blog.create(
  title: "My Blog Post 7",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 1,
  author_id:2
  )

  Blog.create(
  title: "My Blog Post 8",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 2,
  author_id:3
  )

  Blog.create(
  title: "My Blog Post 9",
  body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem
  accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae
  ab illo inventore veritatis et quasi architecto beatae vitae dicta
  sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur
  aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione
  voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum
  quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam
  eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat
  voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem
  ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi
  consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate
   velit esse quam nihil molestiae consequatur, vel illum qui dolorem
   eum fugiat quo voluptas nulla pariatur?",
  topic_id: 3,
  author_id:4
  )

puts "Blog post created #{Blog.all.count}"


Portfolio.create!(
title: "Building a Clone for  the Newsweek Website",
subtitle: 'Using Bootstrap Framework',
body: "This project consists of replicating the website Newsweek.
We used Bootstrap version 4.5 for the most part
The content can be viewed on small screen sizes and all the way up to extra-large displays
We also worked on the positioning of the elements",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Linter for CSS",
subtitle: 'Ruby Capstone',
body: "The project is based on creating a linter for CSS
It opens the file that is given in the terminal and the code will read line by line
it will look for the errors, I concentrated on looking for
the missing initial period at the beginning of the line to call the class
it searches for missing semicolons at the end of every line
it also searches for comments that were left on the code
I also created the rspecs for the TDD approach I did a total of 5 test

evaluating that the file exists
evaluating that there are comments
evaluating if the method created catches and missing an initial period
evaluates that the methods is looking for missing semicolons
evaluates the method that tests once the file doesn't return errors",

main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Building with Responsive Design",
subtitle: "Using Media Queries",
body: "#HTML & CSS: Building with Responsive Design
This project consists of replicating the website The Next Web website.
Putting emphasis on how it behaves differently depending on the size of the screen where the website is rendered.
We adjusted the breakpoints for desktops, laptops, iPads, and iPhones",

main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Directory Of Events",
subtitle: "HTML/CSS Capstone",
body: "The design was inspired on the Mathew Njuguna patashuleKE design, I choose to go with a Directory of Events where I am giving back to the user a list of sports events that will take place either the current day, the day after, and over the weekend.
It consists of a total of 3 pages, the main page will display the main event for the week and also ideas on what to do with your friends.",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)


Portfolio.create!(
title: "Design Teardown",
subtitle: "#HTML and CSS: Design Teardown",
body: "Baing on the User Interface we developed the app thinking first of the distribution of the elements before adding any content",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "LifeStyle Articles",
subtitle: "Rails Capstone Project",
body: "On this project, I was able to create a new app implementing the ERD diagram.
Based on the ERD diagram I created all the tables for articles, likes, users, categories, and added an extra table to connect the categories with the articles as well called articlecategory.
added devise for authentication for the users.
Created a seed file that contains all of the articles, users, likes, and everything needed for the app to run
added respect as well to comply with the TDD development side of the project
implemented bootstrap, font awesome and previous knowledge from previous projects to complete this capstone.",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Authentication",
subtitle: "Project Rails / SQLite3",
body: "The project is based on Authentication, meaning if a user is logged in will have the ability to create a new post, 
if the user is not logged in he won't be able to",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)


Portfolio.create!(
title: "Building With Active Records",
subtitle: "Using Active Records",
body: "This project is about active records,models, and associations to the tests. 
This application similar to Reddit (called Micro-Reddit) where a user can create a post and add comments to it.
For each scenario, we are asked to write down the data, associations, and validations necessary to build it. 
That means which models (data tables) will be necessary to store the data (and which columns you will need), 
which fields of those tables will be subject to validation (e.g. minimum password length or username uniqueness).",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Ciao! - The free speech social network",
subtitle: "A free social metwork for sharing ideas without limitations",
body: "App based on creating relantioships between user,
have the ability to send friend request,
accept or decline friend request,
and display the post from user, and also count the likes for each post",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Blog App",
subtitle: "Postgres",
body: "Project was about creating a blog using rails it has the functions of creating new blogs, editing and destroying blogs.",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Video Player Page",
subtitle: "YouTube Clone",
body: "Project was based on creating a YouTubeClone.",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Signup Page",
subtitle: "Mints Signup Page Clone",
body: "Project was based on creating a clone from Mints Signup Page",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Private Events",
subtitle: "Rails Association",
body: "The project is based on Rails Asociations. 
If a user is logged in will have the ability to create a new events and Invite users to that event, 
if the user is not logged in he won't be able to",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Forms Project",
subtitle: "In this project we created a Form to gather information such as First Name, Last Name, Email, Phone, Twitter",
body: "This project teaches the multiple ways to build a form in rails that can send parameters to a controller so 
that it can build an instance of a model with those parameters.
On this particular branch, we created model using the scaffold, we also use bootstrap to add some styling to the app.",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)

Portfolio.create!(
title: "Weather Project App",
subtitle: "Building a Weather APP using an API",
body: "This project was based mainly on creating a Weather APP, 
implementing javascript, APIs",
main_image: 'https://via.placeholder.com/600x400',  
thumb_image: 'https://via.placeholder.com/350x200'
)


puts "Portoflios created with the Subject My Great Service #{Portfolio.all.count}"


Technology.create(name:"Rails",portfolio_id:1)
Technology.create(name:"Ruby",portfolio_id:1)
Technology.create(name:"Bootstrap",portfolio_id:1)
Technology.create(name:"Bootstrap",portfolio_id:2)
Technology.create(name:"HTML",portfolio_id:2)
Technology.create(name:"CSS",portfolio_id:2)
Technology.create(name:"Rails",portfolio_id:1)


puts "Technologies  created! #{Technology.all.count}"

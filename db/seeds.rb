# frozen_string_literal: true

User.create(email:"luffy@onepiece.com",name:"luffy",password:"123456",role:"site_admin")
User.create(email:"zorro@onepiece.com",name:"zorro",password:"123456")
User.create(email:"sanji@onepiece.com",name:"sanji",password:"123456")
User.create(email:"jinbei@onepiece.com",name:"jinbei",password:"123456")
User.create(email:"robin@onepiece.com",name:"robin",password:"123456")


3.times do |topic|
  Topic.create!(
    title: "Topic#{topic}"
  )
end
puts '3 Topics created'

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
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
    topic_id: Topic.last.id,
    author_id:1
    
  )
end

puts '10 blog post created'

5.times do |skills|
  Skill.create!(
    title: "Rails #{skills}",
    percent_utilized: 15
  )
end

puts '5 skills created'

5.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: 'My Great Service',
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
             ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
             aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.",
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x200'
  )
end

puts '5 Portoflios created with the Subject My Great Service'

3.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
             ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
             aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.",
      main_image: 'https://via.placeholder.com/600x400',
      thumb_image: 'https://via.placeholder.com/350x200'
             
    
  )
end

puts '3 Portoflios with Ruby on Rails Subject created'

2.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: 'Angular',
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
        do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
             ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
             aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
             in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
             Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
             officia deserunt mollit anim id est laborum.",
             main_image: 'https://via.placeholder.com/600x400',
             thumb_image: 'https://via.placeholder.com/350x200'
             
  )
end

puts '2 Portoflios created with the Subject Angular'

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end
puts '3 Technologies  created!'

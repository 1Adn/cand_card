# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Tags
# Tags
tag1 = Tag.create(name: "Education")
tag2 = Tag.create(name: "Entertainment")
tag3 = Tag.create(name: "Technology")
tag4 = Tag.create(name: "Science")

# Sessions
session1 = Session.create(name: "Ruby Basics", tag: tag1)
session2 = Session.create(name: "Rails Advanced", tag: tag1)
session3 = Session.create(name: "AI in Entertainment", tag: tag2)
session4 = Session.create(name: "Machine Learning", tag: tag3)
session5 = Session.create(name: "Space Exploration", tag: tag4)

# Question Cards
QuestionCard.create(session: session1, question: "What is Ruby?", answer: "A programming language.")
QuestionCard.create(session: session2, question: "What is Rails?", answer: "A web application framework.")
QuestionCard.create(session: session3, question: "What does AI stand for?", answer: "Artificial Intelligence.")
QuestionCard.create(session: session4, question: "What is supervised learning?", answer: "A type of machine learning where the model is trained on labeled data.")
QuestionCard.create(session: session5, question: "What is the largest planet in the solar system?", answer: "Jupiter.")
QuestionCard.create(session: session1, question: "Is Ruby object-oriented?", answer: "Yes, it is fully object-oriented.")
QuestionCard.create(session: session2, question: "What is MVC?", answer: "Model-View-Controller architecture.")

# Image Cards
ImageCard.create(session: session1, name: "ruby_logo.png")
ImageCard.create(session: session2, name: "rails_logo.png")
ImageCard.create(session: session3, name: "ai_image.png")
ImageCard.create(session: session4, name: "machine_learning_diagram.png")
ImageCard.create(session: session5, name: "jupiter.png")
ImageCard.create(session: session1, name: "ruby_gem.png")
ImageCard.create(session: session4, name: "ml_process.png")

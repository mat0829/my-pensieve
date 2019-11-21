# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [X] Include at least one has_many relationship (User has_many Memories) 
- [X] Include at least one belongs_to relationship (Memory belongs_to User)
- [X] Include at least two has_many through relationships (User has_many Emotions through Memories, User has_many Players through Memories)
- [X] Include at least one many-to-many relationship (Memory has_many Emotions through MemoryEmotions, Emotion has_many Memories through MemoryEmotions; Memory has_many Players through MemoryPlayers, Player has_many Memories through MemoryPlayers)
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [X] Include signup (how e.g. Devise)
- [X] Include login (how e.g. Devise)
- [X] Include logout (how e.g. Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [X] Include nested resource show or index (URL e.g. users/:id/memories)
- [X] Include nested resource "new" form (URL e.g. users/:id/memories/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [X] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [X] Views use partials if appropriate
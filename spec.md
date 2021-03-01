# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
        - Project is built in Rails
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
        - Users have many RepariBills
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
        - RepairBills belong to Users
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
        - Users have many Technicians through RepairBills
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
        - Users have many Techicians through Repair Bills & vice versa 
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
        - When creating a new RepairBill, a perferred Technician is also submitted, selected by it's name attribute
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
        - Several fields are validated for presence in the new RepairBills form
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
        - The Technician with the most repair bills is displayed as a top performer
- [x] Include signup (how e.g. Devise)
        - A new User can sign up 
- [x] Include login (how e.g. Devise)
        - An existing User can log in
- [x] Include logout (how e.g. Devise)
        - A User can log out
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
        - A User can sign up through Google
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
        - A User's created RepairBills are tracked and excusively dispalayed to that User. 
- [/] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
        - A technician has a nested resource of 'reviews.'
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
        - Form errors are displayed when invalid data is entered 

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
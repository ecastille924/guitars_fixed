MODELS 

class Admin 
	has permission to view all instruments from all Users, and can indicate if a particular instrument has been repaired or not. 
end

class User 
	has_many :luthiers, through :instruments 
	has_many :instruments 
end

class Technician
	has_many :users, through :instruments
	has_many :instruments
end

class Repair_bill 
	belongs_to :customer
	belongs_to :luthier
end

_______

class UsersController < ApplicationController
	
end

class RepairBillsController < ApplicationController 
	
end

class TechniciansController < ApplicationController
	
end

_______

Views / Forms thoughts: 

~ Maybe include some way to see if a particular instrument is active (being worked on) or inactive (work has been completed) 


Repair Bill: 
A Repair bill form should have fields for:
    - Customer name (auto-fills the user name? Links to the create new user form?) 
    - Guitar model (select from a drop down or add new)
    - A drop- down menu to select the desired Luthier?
    - A text area to describe the issue with the instrument 

Show page (may not need this??) 
	- Display instrument name 
	- Display owner’s name? 

Index view
	- Shows a list of all Instruments worked on by the shop for the current user. 
	- Maybe show’s a checkbox indicating if the job has been completed? Or maybe there’s an admin account with permissions to indicate job completion? 
Edit view
	- displays a form for editing information about a particular instrument. Also gives the user the option to delete the instrument. 

Users: 
	- New form creates a new User 
	- Don’t need an index because we don’t really want to display all customer names
	- 

Repair Techs:
	- Don’t need a new form because the site will have permanent Luthiers, electable by users
	- Index page will display a list of luthier’s names with clickable links to the show page for that luthier 
	- Show page will display a particular Luthier’s name and a brief summary of that particular luthier’s specialties and a short bio. 
	- Don’t need edit view, b/c a user won’t edit luthier info. 


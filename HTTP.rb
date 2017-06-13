begin
categories

url - http://localhost:3000/categories
uri - /categories
method - GET
action - index
role - is to list resources (resources refers to data)
path - categories_path

url - http://localhost:3000/categories/new
uri - /categories/new (1st - controller name, 2nd - action name)
method - GET
action - new
role - is to instantiate an object and setup a form
path - new_category_path

url - http://localhost:3000/categories
uri - /categories
method - POST
action - create
role - is to validate the data. If the validations pass then save the data coming in from the form or else display the error message. 

url - http://localhost:3000/categories/1 (parameter)
uri - /categories/1
method - GET
action - show
to show one specific resource (data) along with its associated resources. 
path - category_path(category.id)

url - http://localhost:3000/categories/1/edit
uri - /categories/1/edit
method - GET
action - edit
role - to fetch the record to be edited and display it in a form.
path - edit_category_path(@category.id)

url - http://localhost:3000/categories/1 #here '1' is an object_id
uri - /categories/1
method - PUT/ PATCH #Put is used to change one attribute. To change multiple attributes, we use PATCH
#Put allows you to update one attribute at a time. Patch allows you to update multiple attributes at the same time. 
action - update
role - is to validate the data, if the validations pass, then update the data coming in from the form or else display the error messages. 

url - http://localhost:3000/categories/1
uri - /categories/1
method - DELETE
action - destroy
role - to find the record to be deleted and invoke the destroy action. 



HTTP methods

POST - CREATE
GET - READ
PUT - UPDATE
DELETE -DESTROY



=begin

rails new Folder_Name
rails generate model Model_name
#files get created in models(with the same name)
#file gets created in db->migrate. 
Add reader_attributes in db->migrate file. 
rake db:migrate
bundle install
create a faker file in main folder
enter all the required attribute in the fake file.
run the command in rails console. 
**data gets created in database**


STEPS

1. Creating models
2. Writing models inside migration
3. rake db:migrate
4. creating controller
5. adding routes
6. creating action
7. creating view from an action



=end

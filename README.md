RESTful routes:

HTTP verb  |     Route     |     Action      |     What is actually happening?
GET            /plants           index               display a collection of the plants
GET           /plants/:id        show                display more detailed info about the plants
GET           /plants/new        new                 display a form to gather data about what we will create
POST          /plants            create              taking form information and creating the plant
GET         /plants/:id/edit     edit                display current plant as stored in DB and then allow to edit
PATCH        /plants/:id         update              make desired changes to the plant selected(needs 'hidden' method in view)
DELETE       /plants/:id         destroy             will delete the plant from the db (needs 'hidden' method in view) 


C- create
R- read (index, show, new)
U- update
D- delete

INSTALLATION:
1. Clone this repo
2. run 'Bundle install'
3. Start server using Shotgun or Rackup


Functionality:
1. A user should be greeted with the home page. done
2. A user should have the option to sign up or log in. done
3. A user should only be able to enter valid information to sign up/login. done
4. if a user signs up, take them to their user_homepage once signed up. done
5. Otherwise a user should be able to login and be directed to their user_homepage which shows all their plants done
6. once at the user_homepage, a user should be able to edit a plant or create a new plant done
7. if edit is chosen, they are able to edit the name of the plant, or delete the plant, and submit their changes done
8. if create a new plant is chosen, they can submit a new plant name to be added to their collection done
9. A user should be able to logout from any page done
HTTP verb  |     Route     |     Action      |     What is actually happening?
GET            /plants          index               display a collection of the plants
GET           /plants/:id       show                display more detailed info about the plants
GET           /plants/new       new                 display a form to gather data about what we will create
POST          /plants           create              taking form information and creating the plant
GET         /plants/:id/edit    edit                display current plant as stored in DB and then allow to edit
PATCH        /plants/:id        update              make desired changes to the plant selected

C- create
R- read (index, show, new)
U- update
D- delete
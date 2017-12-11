# BILLING SYSTEM
The usefulness of this program is mainly to create a suitable environment for the invoicing of jobs carried out by the employees of a company

<<<<<<< HEAD
# How it works?
This program was developed using mainly 3 programming languages: Ruby on Rails, SQL and Bootstrap.
it is also based on the use of a database that is able to keep track of all the customers with their relative characteristics and the different works carried out by them.
=======
## The idea of this project

first of all we created User stories, which is the basis of our project. Among the many, the main ones are the insertion of new customers and new invoices and the ability to modify or eliminate those previously created.
subsequently, we created the basis of our project, the database, which allows us to save all the information related to the program.
After completing the first implementations, we moved on to the testing phase, adopting a BDD(Behaviour Driven Development) approach. This technique allows us to perform different tests that avoid errors within the program in such a way that results more fluent.
Finally we focused on the graphic part of the project, trying to create an interface easily understood by all user and using bootstrap we managed to create an intuitive and easy-to-use environment


# How it works?
This program was developed using mainly 3 programming languages: Ruby on Rails, SQL and Bootstrap.
It is also based on the use of a database that is able to keep track of all the customers with their relative characteristics and the different works carried out by them.
the main page contains the link that refers to this repository and 2 buttons that allow you to look at the customers and all the jobs included in the database. By pressing the first one, it is possible to view all the information of the clients included in the database and, when necessary, to create new ones by pressing the "New client" button. To show the works of a client, on the other hand, simply press the "show" button and change the information of a client the "Edit" button. To pay a job for a specific customer, simply press the "Pay" button.
>>>>>>> d2fa6cdb82ad79c053d92a767bedd83001080988

# Utilities
Through the use of this application, you are able to:
- Create, delete and edit customers populating the database
- Create, delete and edit works populating the database
- See all the features related to customers such as works, billed hours, unbilled hours, personal data etc.
- See all the features related to works such as note, import, billing status etc.
- Pay a work using a button

# Database's structure
```javascript
ActiveRecord::Schema.define(version: 20171121001907) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "tarif"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "surname"
  end

  create_table "works", force: :cascade do |t|
    t.integer "client_id"
    t.string "note"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "billed"
    t.float "money"
    t.index ["client_id"], name: "index_works_on_client_id"
  end

end
```
#### And this is the database schema generated by railroady
 <p align="center">
  <img src="https://github.com/TobaJR/Ingegneria_sw2/blob/master/models.png">
</p>

<<<<<<< HEAD
We used a batabase to keep track of all customer data and work in a precise and orderly manner,
=======
We used a batabase to keep track of all customer data and work in a precise and orderly manner

# LICENSE
Copyright (c) 2017 TobaJR

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
>>>>>>> d2fa6cdb82ad79c053d92a767bedd83001080988


# PROJECT DEVELOPERS
- Andrea Tobaldi @TobaJR
- Maffei Massimo @Maffo97

# BILLING SYSTEM
the usefulness of this program is mainly to create a suitable environment for the invoicing of jobs carried out by the employees of a company

# How it works?
This program was developed using mainly 3 programming languages: Ruby on Rails, SQL and Bootstrap.
it is also based on the use of a database that is able to keep track of all the customers with their relative characteristics and the different works carried out by them.

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


# PROJECT DEVELOPERS
- Andrea Tobaldi @TobaJR
- Maffei Massimo @Maffo97

# Bookmark
The website will have the following specification:

* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks



As a user
I can remember my bookmarks
I want to be able to save them.

Class 			|    Methods
Bookmark		     #save_list

As a user
I can see my stored bookmarks
I want to be able to see them.

Class 			|    Methods
Bookmark		     #show_list


As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks


Follow these steps to set up the bookmarks_manager database:

  1) Connect to `psql`  :    psql postgres
2) Create the database running `CREATE DATABASE bookmark_manager;`
 3) Connect to the database using the pqsl command `\c bookmark_manager;` 
4) Run the query we have saved in the file `01_create_bookmarks_table.sql '

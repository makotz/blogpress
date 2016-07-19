# BlogPress
_Angela's Rails Application_
A blog built with Ruby on Rails

### Assignment 1
- Setup empty Rails project (make sure it's version 4.2 or more)
- Make sure that the project uses postgres database
- Create controller "home" that handles home and static pages
- Create a page "About" which has information about the tool (anything for now).
- Add your photo and information in the about page (link to external photo of you for now)
- Create a navigation bar that applies to all pages. The navigation bar must include links to "home" and "about" pages
- Put all of your code on GitHub
- Submit the Github link

### Assignment 2
#####Build four of your main models: post, comment, category and contact (don't worry about associations yet, will add those later).

Here are a summary of suggested fields and validations (feel free to add to those)

`Post: title(required & unique), body
Comment: body (required & unique per blog post)
Category: title (required)
Contact: email, name, subject and message`

### Assignment 3
#####Build CRUD for the posts in your blog with:
- Ability to list all the posts in the app
- Ability to view a page with a form to create a new post
- Ability to click "submit" on the form and create the post
- It shouldn't allow creating posts without a title
- On the listing page there should be a link to visit the post display page
- That page should have "edit" and "delete" links
- Clicking the edit link should go to a page similar to the one for creating new post, except that it should say "editing post" and should be pre-populated with post info
- Clicking "delete" should prompt the user "Are you sure you want to delete this post" and if the user clicks "yes" it should delete the post from database and take user back to listing page.

##### A3 - Stretch 1
Implement the ability to search for a project by a search field that matches with either the title or body of the blog.

### Assignment 4
- Implement full `CRUD` operations for Comment resource in the Blog. Very similar to the Post resource.

##### Write tests for your `Post` model in your Blog project.  Add tests for the following:
- Validation of the presence of Post's title
- Validation of the minimum length of Post's title (7 characters)
- Validation of the presence of Post's body
- Test drive a method `body_snippet`  that returns a maximum of a 100 characters with "..." of the body if it's more than a 100 characters long.

### Assignment 5
Write tests for the Blog Posts controller actions: `new / create / show / index`

##### A5 - Stretch 1:
- Also write tests for the `edit / update / destroy` actions

##### A5 - Stretch 2:
Do the above in `TDD style`

- Add categories to your Blog tool, make sure that you seed file creates at least 10 categories. Implement the ability to select one category from a drop down when creating a blog post.
- Each comment must have a "body" attached to it. Make sure that on the post show page you list all the comments ordered by creation date. List the most recent at the top.
- Add standard user authentication for your Blog. Make sure your user has first name, last name and email.
- Implement the ability to edit the user's first name, last name and email for your blog project. Make it so when the user clicks on his/her name they go to a page where they can edit their information.

### Assignment 6
Implement a `forgot password` feature for your Blog application that works as follows:
- In the sign-in page have a link called "forgot password? click here"
- The link above should take the user to a page where they can enter their email
- After entering their email and hitting `submit` the user should technically get an email with a link. Don't worry about sending an email now as we haven't heard that yet but make sure you have a link with a token to reset the password.
- When the user visits the page with that link it should show three fields: new password and new password confirmation
- To change the password the user must enter matching password
- The user is redirected to the sign-in page to sign in with new credentials

##### A6 - Stretch 1:
- Have the `reset password` link expire in three days

##### A6 - Stretch 2:
- The `has_secure_password` feature is a solid one and in most circumstances you don't need to write you own or change it. For the sake of practice comment out `has_secure_password` and make sure your Blog application still works. Remember to ensure that the password gets Hashes and remember to make sure you have an `authenticate` method that works as the built-in one does. Also, make sure to have the same built-in validations.

##### A6 - Stretch 3:
- Implement the ability to lock an account if there have been 10 failed sign in attempts to your Blog tool. After that they must use the `forgot password` feature to reset the password.

### Assignment 7
- AJAXify favouriting and unfavouriting blog posts for your blog tool so that page doesn't reload when the use favourite or unfavourite a post.
- Make creating comments for posts use AJAX so that the page doesn't reload.
- Make deleting a comment use AJAX

##### A7 - Stretch 1:
- Enable comment editing / Updating with AJAX

### Assignment 8
#####Built a client for your Blog project that has the following attributes:
- Must be plain HTML, CSS and Javascript (with jQuery)
- Must use AJAX to make requests
- When you first open up the main page, it should list all blog posts (just titles)
- When you click on a blog post the page should display the title and description of the blog post with a listing of all the comments, there should be a back button that lists all the blog posts

##### A8 - Stretch 1:
- Enable commenting on the post display page
##### A8 - Stretch 2:
- Add pagination to the posts listing page. There should `"Next"` and `"Previous"` buttons to paginate between pages.

### Assignment 9
- Add **FriendlyId Gem** to your Blog application to the `Post` model on the `title`. Make sure to use history so that if the user enters a new title it generates a new slug but the post is still accessible with the old slug.

### Assignment 10
- Integrate SimpleForm with your Blog application and convert all of your forms to use SimpleForm.
##### Add a file attachment feature to your blog :
- Every post can have many images
- Store images with different sizes (_thumb, medium, large_) in addition to the original. Show the large one in the blog show page and the thumb on the listings page.

### Assignment 11
#####Add an API for your Blog application that supports the following:
- Getting a list of all the blog posts in your system
- Getting the details of a specific blog post with its comments. Make sure that blog response contain: post tags, the number of likes and the name of the creator of the post.
- Add the ability to create a blog post. Make sure to return a JSON of the errors if the post fails to save.

##### A11 - Stretch 1:
- Create an HTML page (outside of your Rails application) with jQuery as a client to test the API you created.

### Assignment 12
Enable users to authenticate with `Twitter OAuth` on your Blog application. Add a checkbox for the form that creates a blog post so that when users creates a blog post, they have the option to check that checkbox to `send a tweet` with the title of their post along with a link to their website.

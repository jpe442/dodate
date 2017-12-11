## About

Do Date is a new envisioning of the todo application loosely inspired by Kanban boards. In contrast to the traditional simple list-based todo app, Do Date allows the user to organize their todo items across the work week. This way the user can easily plot out 'when' the ideal time would be to work based on 'what' the work is and 'how long' the work might take. 

The primary user-view features an interactive Monday-Sunday calendar of the week from which users organize their todos by simply dragging them around and dropping them where they would like on the calendar. New todos are created from a new-todo form, where they can then be immediately placed onto the left responsive side-menu that holds unscheduled items, or directly onto an open space of the calendar. Once the user has completed the task, they move the item to the "Done" right responsive side-menu. Overall, this procedure provides the user an intutive left-to-right workflow: left/unscheduled-->center/scheduled-->right/done. 

## Mvps

- [ ] New account creation, login, and guest/demo login
- [ ] A production README
- [ ] Hosting on Heroku
- [ ] Web App
  - [ ] Users can create/edit/delete "todo sticky notes" (notes)
  - [ ] Users can move notes to week planner
  - [ ] Users can move notes to "done" area
  - [ ] Notes have tags/color to organize by project
- [ ] React Native
  - [ ] Users can create/edit/delete "todo sticky notes" (notes)
  - [ ] Users can move notes to week planner
  - [ ] Users can move notes to "done" area
  - [ ] Notes have tags/color to organize by project
- [ ] Backend/Integration
  - [ ] Changes in Native app show up on Web App
  - [ ] Changes on Web app show up in Native App

## Implementation Schedule

#### Division of Labor by First Priority:

- Josh - React/Redux Component Architecture - Backend
- Niall - UX: Frontend Layout, Ergonomics, and Styling
- Kevin - React/Redux Native Mobile Frontend Components

#### Over the Weekend:

- Finalize proposal (including division of labor and implementation schedule)
- Initialize repo, create rails app with DB 
- Begin/test git team workflow started
- Research Material UI
- Finish React Native Demo

#### Monday-Day 1:

- Web: Hosted on Heroku
- Web: Splash Page - Up with SignUp/Login portals
- Web/Native: User Auth Back-to-Front Cycle Complete: Login modal
- Web: Sign-up form

#### Tuesday-Day 2:

- Web/Native: Homepage - Basic Layout Complete
- Web/Native: Homepage - Left Responsive SideMenu: Unscheduled Todos
- Web/Native: Homepage - Unschedules
- Web/Native: Homepage - CRUD, drag and drop todos

#### Wedensday-Day 3:

- Web/Native: Homepage - Calendar Times/Calendar Configuration Persists
- Web/Native: Homepage - Right Responsive SideMenu: Done Todos

#### Thursday-Day 4:

- Web/Native: Homepage - User Profile
- Web: Homepage - User can adjust work hours by week
- Web: Homepage - Done Todos organize by a)order of completion(newest first, oldest first) or b)tag

#### Friday-Day 5:

- Web/Native: Homepage - Filter viewable todos by tag
- Web: Archivability of Done todos

#### Saturday-Day 6:

- Web/Native: Finalize styling
- Web: Clean code for any `debugger`s and `console.log`s 
- Start Production README

#### Sunday-Day 7:

- Web: Host on private domain
- Finalize everything, final adjustments/tweaks, address any lingering bugs


## Database schema

#### users: 

-email:string:required:index
-password_digest:string:required:index
-session_token:string:required:index

#### todos:

-task:string:required:index
-notes:text
-tag:string:required:index
-user_id:integer:index
-workflow_pos:string:required
-estimated_time_to_completion:integer:required:index
-start-time:integer:index
-end-time:integer:index


## Routes

#### users

- POST api/users/ - creates a new user
- GET api/users/:id - returns a user
- PATCH api/users/:id - updates a user's information
- DELETE api/users/:id - deletes a user

#### session

- POST api/session/ - creates a new session(logs a user in)
- DELETE api/session/:id - deletes a session(logs a user out)

#### todos

- GET api/users/:user_id/todos - returns all a users todos
- POST api/users/:user_id/todos/ - creates a new todo for a user

- GET api/todos/:id - returns a todo
- PATCH api/todos/:id - updates a todo
- DELETE api/todos/:id - deletes a todo


## Wireframes

# Splash Page
![](https://github.com/jpe442/dodate/blob/master/app/assets/images/splash_page.jpg)

# Main Page
![](https://github.com/jpe442/dodate/blob/master/app/assets/images/main_page.jpg)

# To Do Creation Sidebar - left
![](https://github.com/jpe442/dodate/blob/master/app/assets/images/to_do_creation_sidebar.jpg)

# Done Sidebar - right
![](https://github.com/jpe442/dodate/blob/master/app/assets/images/done_sidebar.jpg)

# Weekend Bottom Bar
![](https://github.com/jpe442/dodate/blob/master/app/assets/images/weekend_bottom_bar.jpg)
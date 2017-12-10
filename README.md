## About

Do Date is a new envisioning of the todo application loosely inspired by Kanban boards. In contrast to the traditional list-based todo app, Do Date allows the user to organize their todo items across the work week. This way the user can easily plot out 'when' the ideal time would be to work based on 'what' the work is and 'how long' the work might take. 

The primary user-view features an interactive Monday-Sunday calendar of the week from which users organize their todos by simply dragging them around and dropping them where they would like on the calendar. New todos are created from a new-todo form, where they can then be immediately placed onto the left responsive side-menu that holds unscheduled items, or directly onto an open space of the calendar. Once the user has completed the task, they move the item to the "Done" right responsive side-menu. Overall, this procedure provides the user an intutive left-to-right workflow: left-unscheduled/center-scheduled/right-done. 

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

Over the Weekend:

- Finalize proposal (including division of labor and implementation schedule)
- Initialize repo, create rails app with DB, get git team workflow started
- Research Material UI
- Finish React Native Demo

Monday-Day 1:

- Web: Hosted on Heroku
- Web: Splash Page Up
- Web/Native: User Auth Cycle Complete

Tuesday-Day 2:

- Web/Native: Homepage - Basic Layout Complete
- Web/Native: Homepage - Left Responsive SideMenu: Unscheduled Todos
- Web/Native: CRUD, drag and drop todos

Wedensday-Day 3:

- Web/Native: Homepage - Calendar Times
- Web/Native: Homepage - Right Responsive SideMenu: Done Todos

Thursday-Day 4:

- Web/Native: Homepage - User Profile
- Web: User can adjust work hours by week

Friday-Day 5:

- Web/Native: Homepage - Filter showing todos by tag 
- Web: 

Saturday-Day 6:

- Web/Native: Finalize styling
- Clean code for any `debugger`s and `console.log`s 
- Finish Production README

Sunday-Day 7:

- Web: Hosted on private domain
- Finalize everything, final tweaks, fix any lingering bugs


### Database schema



### Routes

api/users/ - GET, POST
api/users/:id - GET, PATCH, DELETE

api/todos/ - GET, POST
api/todos/:id - GET, PATCH, DELETE

### Wireframes



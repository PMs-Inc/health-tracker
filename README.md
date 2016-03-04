## Deliverables

- [x] * **An ERD.** Create a database diagram in Lucidchart (or a similar tool).
- [x] * **A GitHub organization.** Create an organization in GitHub to represent your team for this project.
- [ ] * **A Repository.** Create a new repository.  In the end, your repository should have multiple branches (that is, don't delete them after merging).
- [ ] * **A README.**
- [ ] * **A working Rails app on Heroku.**
- [ ] * **A test suite.** Build your application using TDD.  Your test suite must include unit tests and controller tests.

- [ ] Build an application which lets you enter and review information about your health and activity.  You should be able to enter all four of these pieces of [] information (and each will correspond to its own data table):
  - [x] * Weight
  - [x] * Steps Taken
  - [x] * Calories Consumed
  - [x] * Exercises Performed (including a field for the number of calories burned)

- [ ] The forms for viewing and entering these pieces of information can look however you'd like them to, but the user will need to be able to access your application by going to the root address (e.g. `http://simmering-plateau-1234.herokuapp.com/`) and seeing a dashboard.  From the dashboard, the user can then follow links to get to the other pages.
- [x] There must also be a fifth table: `exercise_types`.  This table only needs an `id` and a `name`, but it must be related to the table of exercises.  In other words, each exercise must be assigned an exercise type.  You do not need to create views or a controller to edit these types if you don't want to; you can set them up via seeds.

- [ ] * Each developer should build out code to manage one of these pieces of information by him or herself, and should do so in different branches.  Merging should be done together, and then the remaining work can be divided up or done together however you see fit.
- [x] * You can use scaffold for two of the four main controllers, but you must build the other two by hand without scaffold.  If you decide that you want a controller for the fifth (`exercise_types`), do whatever you like to create that controller.
- [ ] * During development, the application should have a number of points in time in which there are no known bugs.  If you have links that go nowhere, pages that don't work, or random errors you can't explain, DON'T move on to the next feature.  Fix the bugs first, clean up the links, and get it in a solid state.  Then put `#shipit` somewhere in the commit message and move on to the next feature.  I'll check your commits to see how many times you've been shippable.

- [ ] * You should create at least a few seeds and fixtures.
- [ ] * Your dashboard must:
- [x]   * have links to all four of the list pages.
- [ ]   * show the net number of calories for the day (calories consumed minus calories burned through exercise).
- [ ]   * show two other statistics of your choosing (but they must be calculated from your data).

There are a few data requirements:

- [x] * Each of these measurements should be given for a particular date.
- [x] * You should not be able to enter two weight measurements for the same date.
- [x] * You should be able to enter multiple records for steps taken, calories consumed, and exercises performed for the same date.

- [ ] Finally, you'll note that these models have a lot in common.  Write a module to extract some of this shared behavior.

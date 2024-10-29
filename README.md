# prokoders Ecommerce App

A new Flutter project, several assigned tasks by Prokoders.

#### Task #1  
##### :date: start date: 23/10/2024 06:45 PM - Deadline: 24/10/2024 10:00 AM
Objective: Build and E-commerce app with onboarding screens and animate transitions. You are taksed with building an e-commerce application that includes an onboarding process with smooth animations between screens. The onboarding screen will showcase main features of the app, and the user will navigate through them before reaching the main shopping screen.  
Result:  
<img src="readme_photos/task_1/onboarding.gif" width="300" align="center"/>  
  
#### Task #2  
##### :date: start date: 25/10/2024 09:30 PM - Deadline: 27/10/2024 10:00 AM
Objective:  
* Login screen  
Create a login screen where the user can enter their credentials:  
    * Fields: Include input fields for `email` and `passowrd`.  
    * Button: Add a login button to submit the credentials.  
    * Link to sign up: Provide a link or button that allows users to navigate to the sign up screen if they don't have an account.  
Requirements:  
    * Validate the email and password fields to ensure valid input.  
    * Include basic error handling for missing or invalid input.  

| Login screen | Validated field |
| --- | --- |
| <img src="readme_photos/task_1/login_screen.png" width="300" align="center"/> | <img src="readme_photos/task_1/login_screen_validated.png" width="300" align="center"/> |  

* Sign up screen:  
Design a sign-up screen for new users to create an account:  
    * fields: Add fields for `name`, `email`, `password`, and `passwordConfirmation`.  
    * Include a sign up button to submit the user's information.  
    * Link to login: Provide a link to navigate back to the login screen.  
Requirements:  
    * Validate all fields to ensure that required inputs are present.
    * Check that `password` and `passwordConfirmation` fields match.  

| Signup screen | Validated field |
| --- | --- |
| <img src="readme_photos/task_1/signup_screen.png" width="300" align="center"/> | <img src="readme_photos/task_1/signup_screen_validated.png" width="300" align="center"/> |  

* Home screen with bottom navigation bar:  
After logging in, users should be directed to the home screen, which will have bottom navigation bar for easy access to different sections of the app.  
    * Bottom Navigation bar: Implement a bottom navigation bar with al least three sections (for example, Home, Profile, and Settings).  
    * Screen content: Each section should have placeholder text or simple content representing that section (e.g., "Welcom to Home", "User Profile", and "App Settings").  
Requirements:  
    * Implement smooth navigation between different sections when the user taps teh items in the bottom navigation bar.  
    * Ensure the bottom navigation bar is visible across all sections within the home screen.  
<img src="readme_photos/task_1/bottom_nav_bar.gif" width="300" align="center"/>  
  
#### Task #3  
##### :date: start date: 29/10/2024 09:00 AM - Deadline: 30/10/2024 10:00 AM  
Objective:  
Caching screen using GetStorage  
In this task, you will implement caching for the login, sign-up, and onboarding screen using GetStorage. This will allow the app to remember the user's progress and settings, reducing the need to display these screens every time the app is opened.  
##### Requirements:  
* Onboarding screen caching: Use GetStorage to store a flag indicateing whether the user has completed the onboarding process. When the app launches, check this flag; If the user has completed the onboarding, navigate him directly to the login screen; If not, show the onboarding screens and set the flag to true upon completion.  
* Login screen caching: When the user successfully logs in, store a flag in GetStorage to indicate that he has logged before. When the app is reopened, check this flag: if the user is already logged in, skip the login scree and navigate directly to the home screen; Otherwise, show the login screen.
* Sign-up screen caching.  
##### Steps:  
* Set up GetStorage in the app to handle local data storage.  
* Implement logic on each screen to check GetStorage for cached values and decide teh screen flow accordignly.  
* Test the app to ensure the caching bahaves correctly, remembering the user's progress through onboarding, login, and sign-up.
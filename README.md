# Carousel-Demo
Carousel Homework for Codepath

Time Spent: ~13 hours (I spent way too much time manually doing scroll coordinates on Tuesday and had a tough time getting NSUserDefaults to work properly)

Completed Stories: 

* Required: Static photo tiles on the initial screen
* Optional: Photo tiles move with scrolling
Sign In
* Required: Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
* Required: User sees an error alert when no email is present or no password is present.
* Required: User sees a loading screen upon tapping the Sign In button.
* Required: alertView.dismissWithClickedButtonIndex(0, animated: true) dismisses the loading screen with no buttons.
* Required: User sees an error alert when entering the wrong email/password combination.
* Required: User is taken to the tutorial screens upon entering the correct email/password combination.
Optional: Sign Up
* Optional: Tapping in the form reveals the keyboard and shifts the scrollview and "Create a Dropbox" button up.
* Optional: Tapping the Agree to Terms checkbox selects the checkbox.
* Optional: Tapping on Terms shows a webview with the terms.
* Optional: User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
Tutorial Screens
* Required: User can page between the screens
* Optional: User can page between the screens with updated dots
* Optional: Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.
Image Timeline
* Required: Display a scrollable view of images.
* Required: User can tap on the conversations button to see the conversations screen (push).
* Required:  User can tap on the profile image to see the settings view (modal from below).
Settings
* Required: User can dismiss the settings screen.
* Required: User can log out
Optional: Learn more about Carousel
* Optional: Show the "Learn more about Carousel" button in the photo timeline.
* Optional: Tap the X to dismiss the banner
* Optional: Track the 2 events: View a photo full screen, Share a photo
* Optional: Upon completion of the events, mark them green.
* Optional: When all events are completed, dismiss the banner.
* Optional: Horizontal scroll view of 3 photos in photo full screen (because I need more practice to master scroll views) 

Questions:
* This project has this weird bug where push to the conversations screens work until I open the photo view and trigger NSUserDefaults. Upon which that push segue stops working. Any idea why this is happening? I get the following error: 2015-05-17 22:26:19.096 Carousel Demo[10328:767027] *** Terminating app due to uncaught exception 'NSGenericException', reason: 'Push segues can only be used when the sourc

Carousel App Walkthrough: 

![Carousel App Walkthrough](http://i.imgur.com/nBMId86.gif)

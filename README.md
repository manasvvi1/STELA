# STELA

STELA 4.0 (Smart Teaching Education Learning and Assessment) is a great solution to learning as well as getting your knowledge tested by means of assessments. STELA 4.0 is a place for students who wish to grasp, and for educators who wish to utilize new technologies for education purposes. STELA 4.0 provides an easy to use, user-friendly interface, where students can learn as well as assess themselves.

## Problem Statement

With the advancement of technology, it becomes necessary to automate the process of learning as well. There do exist a lot of e-learning platforms already, but a personalized app that could perform some specific functionalities, with some personalized content was required. It was also necessary to build the platform using newer technologies, which help the developers in easing the process of updating the app. Not only this, but the previous versions of the app was limited to some specific platforms, which considerably reduced the number of users.

## Proposed Solution

STELA is an application integrated with Firebase Authentication and Firebase Cloudstore, which is a real time, remote storage provided by Google on subscription basis. The Firebase Cloud is our main data storage that stores all the data content, assessment links, details of all the students, and the courses. The application fetches all the student, course and faculty related information from firebase cloud on demand. The user gets an application as an interface to the system.

## Requirements

The hardware and software requirements for the implementation of the project are as follows:

### Hardware Requirements

A personal computer for the purpose of creating and accessing the development environment, and multiple mobile devices to deploy and test the app were utilized.

### Software Requirements

#### Android Studio

Android Studio is the official integrated development environment (IDE) for Google's Android operating system, built on JetBrains' IntelliJ IDEA software and designed specifically for Android development. We opted for using Android Studio because: 
- Gradle-based build support. 
- Android-specific refactoring and quick fixes.
- Lint tools to catch performance, usability, version compatibility and other problems.
- A rich layout editor that allows users to drag-and-drop UI components, option to preview layouts on multiple screen configurations.
- Support for building Android Wear apps.
- Android Virtual Device (Emulator) to run and debug apps in the Android studio.

#### Flutter 

Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. In order to make STELA 4.0 platform-independent, we created the fourth version of the app with Flutter.

#### Dart 

- Flutter apps are written in the Dart language and make use of many of the language's more advanced features.
- While writing and debugging an application, Flutter runs in the Dart virtual machine, which features a just-in-time execution engine.
- This allows for fast compilation times as well as "hot reload", with which modifications to source files can be injected into a running application.
- Flutter extends this further with support for stateful hot reload, where in most cases changes to source code are reflected immediately in the running app without requiring a restart or any loss of state.
- Dart Language was capable of incorporating the UI design that we planned for the STELA 4.0 App. 

#### Firebase 

There are various platforms that provide backend as a service but Firebase seems like the most ideal one because of the following reasons:
- Firebase follows the concept of containers and documents which is easier to understand.
- Provides cloud storage so we don’t remain machine/device dependent.
- We can access the information from anywhere with an internet connection.
- Has inbuilt authentication, real time database and detailed analytics to improve the business model and thus acts as an intelligent business tool.
- Has a great free plan which provides great functionality to be tested at small scales

## Implementation of different modules

The STELA system was divided into two modules mainly, namely:
- Application Module
-  Firebase Module
Each module was designed independently, followed by their integration into a single system.

### Application Module

This includes the android/iOS/web applications, built on Android Studio using Flutter. It involves the frontend part of the application, or the user’s end of the application (i.e. specifies how the application would be visible to the user).

### Firebase Module
This module includes the backend part of the application and specifies how the data is stored and rendered on the application module.

### Working Procedure
When an unregistered user tries to Sign Up in the application, they are asked to mention their details (like Name, Enrollment Number, Contact Number, etc.). These details are utilized by Firebase Authentication and Firebase Cloudstore to register the user and authenticate the login for future use.
On the other hand, when a registered user tries to Login in the application, their email ID and Passwords are matched, followed by successful authentication by Firebase Authentication.
The different experiment content, practice questions and assessment modules are rendered as the user navigates through the app.

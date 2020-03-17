# Project App Repo

- This project contains a basic Rails app skeleton.
- Customize this README file for your project as per the instructions you will be provided.

## Getting Started

I assume that you've already completed the demo steps here: <https://human-se.github.io/rails-demos-n-deets-2020/demo-dev-env/>

Once you've cloned this repo and have a working directory, you can perform the following steps to setup and run the app.

`cd` into the project working directory. You should see that a `ruby-2.6.5@project-app` gemset gets created the first time you do this.

You may want to run `bundle update` to make sure that your global installs of the `bundler` and `rails` gems are up to date with any bug/security patches.

Run `bundle install` to install all the other gem dependencies in the `project-app` gemset.

Run `yarn install` to install all the JS dependencies in a `node_modules` folder.

Run `rails db:migrate:reset` to create/reset the project databases.

As a quick sanity check to make sure that things are working, you can run `rails test`. Although the app has no tests, the command should run without error.

You can also run `rails s` and open <http://localhost:3000> to confirm that the development server runs without error and the default page loads as expected.

## About the Project Skeleton

- It uses the gemset `project-app`. (See the `.ruby-gemset` file.)

- It includes the `annotate` gem and is configured to automatically annotate model code files when you run database migrations.

- It includes the `devise` authentication gem; however, Devise-base authentication has not yet been added to the project.

- It includes the `bootstrap` and `bootswatch` packages, and the project is configured to use them. In particular, the app is initially configured to use the `yeti` Bootswatch theme. (See the `app/assets/stylesheets/application.scss` file.)

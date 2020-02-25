# Checklists_and_audits

### Setup

App requires [Ruby](https://www.ruby-lang.org/en/) v2.6.0 to run.

Install the dependencies and start the server.

```sh
$ git git@github.com:SidiromUA/employers_and_departments.git
$ cd employers_and_departments
$ rvm use ruby-2.6.0
# If you do not have installed this version of ruby please install it.
$ rvm install 2.6.0 # or $ rvm install ruby-2.6.0
$ bundle
```

```sh
$ rails db:setup
```

```sh
$ rails db:seed
```

```sh
$ rails s
```
# Ruby base projects
This project is bootstrap to develop with ruby. Ruby on Rails suggests convenient environment to debug, but it is heavy and many unnecessary codes in project.

This project supports basic debugging environment that auto-requirement, .env, unit test environment, console, pry, debugger

## Usage
*requirements*
* Ruby

Clone with project name, replace `my-project` to your want.
```
git clone https://github.com/rubydoc/ruby_base_project my-project
cd my-project
```

Install packages
```
bundle install
````

Make .env
```
cp .env.example .env
```

Run guard
```
bundle exec guard
```

Run console
```
bundle exec rake console
```

## Supports

### Guard/Rspec
Unit test support with BDD Style(Rspec), Guard run Rspec automatically when you change file.
Run `bundle exec guard` to run guard. Also you can run all specs by entering in guard console
```
bundle exec guard
```

### Console/Auto-requirement
Default console is pry, you can interpret any command with auto-requirement.
It's ok if you don't mind about file import when adding new file. It will be included by automatically. But Gemfiles still requires load in `lib/loader.rb`.
```
bundle exec rake console
```

### .env
If you want to keep your secrets in your local only, please put in `.env` file. It doesn't contained to git. You can use it using `ENV['YOUR_SECRET_KEY']`.

### Byebug/Pry
You can use debugger by adding `binding.pry` inside code. It works on guard and console

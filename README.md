# YARD-API theme gem skeleton

This repository contains a minimal setup for customizing the theme of YARD /
YARD-API by providing custom CSS, JavaScript, or overriding the default HTML
snippets like the sidebar and the footer.

## Usage

### Creating the theme gem

This will assume the gem to be called `yard-api-snazz`.

- clone yard-api-snazz (this repository) into something like gems/yard-api-
  snazz
- (optional) rename the `.gemspec` file to have your theme name
- (optional) modify the `.gemspec` file to include references to your theme
  instead of slatelike's; things like `APISnazzPlugin` should become
  `APIFooPlugin`, or file references to `yard-api-snazz` should turn into
  `yard-api-foo` etc.
- reference it in your Gemfile under the `local` group
- require your theme gem in `lib/tasks/doc.rake` in the `api` task:

```ruby
# file: lib/tasks/doc.rake
task 'api' => :environment do |t|
  require 'yard-api'
  require 'yard-api-snazz' # ADD IT HERE
  require 'yard-api/yardoc_task'

  # ...
end
```

That's it. Now when you run `bundle exec rake doc:api` it should be using your
new theme!

### Customizing the styles

The CSS files should be placed under `templates/api/fulldoc/html/*.css`. A
default CSS file is included in this repository under the name `snazz.css`
which you can edit and it will be picked up automatically.

To add other files:

Override the `stylesheets` method in `templates/api/layout/html/setup.rb` so
that it returns `super` plus the array of CSS files you want. For example, to
add the CSS file found at `templates/api/fulldoc/html/foo.css`:

```ruby
# file: templates/api/layout/html/setup.rb
def stylesheets
  super + %w[ foo.css ]
end
```

### Customizing the sidebar

1. Rename the file at `templates/api/layout/html/.sidebar.erb` so that the
   leading dot is removed: `templates/api/layout/html/sidebar.erb`. This
   instructs YARD to use it instead of the stock YARD-API[1] one.
2. Modify to your heart's desires.

[1] https://github.com/amireh/yard-api/blob/master/templates/api/layout/html/sidebar.erb 

### Customizing the footer

Follow the same process for the sidebar but this time with the `.footer.erb`
file.

In fact, the same process could be applied to all `.erb` files in YARD or YARD-
API. Explore the latter's template directory for the `html` folders to see your
options:

https://github.com/amireh/yard-api/tree/master/templates/api/layout/html


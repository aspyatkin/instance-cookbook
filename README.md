# Instance cookbook
Useful library helpers in Chef recipes.

## Usage

```ruby
h = ::ChefCookbook::Instance::Helper.new(node)
h.root_user  # root
h.instance_user  # vagrant
h.instance_group  # vagrant
h.instance_user_home  # /home/vagrant
```

## License
MIT @ [Alexander Pyatkin](https://github.com/aspyatkin)

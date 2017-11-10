# instance cookbook
Useful library helpers in Chef recipes.

## Usage

```ruby
instance = ::ChefCookbook::Instance::Helper.new(node)
instance.root  # root
instance.user  # vagrant
instance.group  # vagrant
instance.user_home  # /home/vagrant
instance.fqdn  # test.box.dev
```

## Notes
`fqdn` property is obtained from `node['automatic']['fqdn']` or `node['automatic']['ipaddress']`.

## License
MIT @ [Alexander Pyatkin](https://github.com/aspyatkin)

# basicmon

### install

- install nodejs
- `git clone git@github.com:Oziabr/basicmon.git`
- `npm install`
- `npm start`
 
### hacking

sources, time interval and destination defined in `config.yaml`

in `app.coffee` this section:
```coffeescript
  final = ->
    console.log 'done', timer.format('YYYY.MM.DD hh:mm:ss.SSS'), moment().diff(timer), result
    #request {url: config.dest}
```
`result` have all the results

uncomment `request` and you can get any url (sending data to that destination depends on receptor)

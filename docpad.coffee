docpadConfig = {
  rootPath: process.cwd()
  packagePath: 'package.json'
  templateData:
    site:
      url: 'http://jsgirls.org'
      title: 'JS Girls'
  collections:
    events: ->
      @getCollection('html').findAllLive({isEvent: true})
  plugins:
    ghpages:
      deployRemote: 'www'
      deployBranch: 'master'
    cleanurls:
      collectionName: 'events'
    stylus:
      stylusLibraries:
        nib: false
      stylusOptions:
        compress: true
        'include css': true
  environments:
    static:
      plugins:
        cleanurls:
          enabled: false
    development:
      stylusOptions:
        compress: false
  events:
    writeAfter: (options, next) ->
      safeps = require('safeps')
      path = require('path')
      docpad = @docpad
      rootPath = docpad.getConfig().rootPath
      gruntPath = path.join(rootPath, 'node_modules', '.bin', 'grunt')

      command = [gruntPath, 'concat', 'csscomb', 'csso', 'uglify']
      safeps.spawn(command, {cwd: rootPath, output: true}, next)

      @
}

module.exports = docpadConfig
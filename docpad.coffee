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
}

module.exports = docpadConfig
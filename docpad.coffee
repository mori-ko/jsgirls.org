docpadConfig = {
  rootPath: process.cwd()
  packagePath: 'package.json'
  templateData:
    site:
      url: 'http://jsgirls.org'
      title: 'JS Girls'
  plugins:
    ghpages:
      deployRemote: 'origin'
      deployBranch: 'master'
    stylus:
      stylusLibraries:
        nib: false
      stylusOptions:
        compress: true
        'include css': true
  environments:
    development:
      stylusOptions:
        compress: false
}

module.exports = docpadConfig
docpadConfig = {
  rootPath: process.cwd()
  packagePath: 'package.json'
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
module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    concat:
      css:
        src: [
          'out/css/vendor/normalize.css',
          'out/css/vendor/kite.css',
          'out/css/style.css'
        ]
        dest: 'out/css/app.css'
      vendor:
        src: [
          'out/js/vendor/ga.js',
          'out/js/vendor/md5.js'
        ]
        dest: 'out/js/vendor/vendor.js'
      js:
        src: [
          'out/js/namespace.js',
          'out/js/map.js',
          'out/js/avatar.js'
        ]
        dest: 'out/js/app.js'
    csscomb:
      all:
        files:
          'out/css/app.css': 'out/css/app.css'
    csso:
      all:
        files:
          'out/css/app.min.css': 'out/css/app.css'
    uglify:
      vendor:
        files:
          'out/js/vendor/vendor.min.js': 'out/js/vendor/vendor.js'
      js:
        files:
          'out/js/app.min.js': 'out/js/app.js'
    jshint:
      all: ['src/documents/js/*.js']
    jsvalidate:
      options:
        globals: {}
        esprimaOptions: {}
        verbose: false
      all:
        files:
          src: ['<%=jshint.all%>']

  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-csscomb'
  grunt.loadNpmTasks 'grunt-csso'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-csslint'
  grunt.loadNpmTasks 'grunt-contrib-jshint'
  grunt.loadNpmTasks 'grunt-jsvalidate'
  
  grunt.registerTask 'test', ['jshint', 'jsvalidate']
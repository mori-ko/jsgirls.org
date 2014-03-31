module.exports = (grunt) ->

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    concat:
      css:
        src: [
          'out/assets/css/vendor/normalize.css',
          'out/assets/css/vendor/kite.css',
          'out/assets/css/style.css'
        ]
        dest: 'out/assets/css/app.css'
      vendor:
        src: [
          'out/assets/js/vendor/ga.js'
        ]
        dest: 'out/assets/js/vendor/vendor.js'
      js:
        src: [
          'out/assets/js/namespace.js',
          'out/assets/js/map.js',
          'out/assets/js/avatar.js'
        ]
        dest: 'out/assets/js/app.js'
    csscomb:
      all:
        files:
          'out/assets/css/app.css': 'out/assets/css/app.css'
    csso:
      all:
        files:
          'out/assets/css/app.min.css': 'out/assets/css/app.css'
    uglify:
      vendor:
        files:
          'out/assets/js/vendor/vendor.min.js': 'out/assets/js/vendor/vendor.js'
      js:
        files:
          'out/assets/js/app.min.js': 'out/assets/js/app.js'
    jshint:
      all: ['src/documents/assets/js/*.js']
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
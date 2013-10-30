Path = require('path')
fs = require('fs')

module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    coffee:
      compile:
        files:
          'textroller.js': 'textroller.coffee'
          'docs/welcome/landing-page.js': 'docs/welcome/landing-page.coffee'

    watch:
      coffee:
        files: ['textroller.coffee', 'docs/welcome/landing-page.coffee', 'sass/*']
        tasks: ["coffee", "uglify", "compass"]

    uglify:
      options:
        banner: "/*! <%= pkg.name %> <%= pkg.version %> */\n"

      dist:
        src: 'textroller.js'
        dest: 'textroller.min.js'

    compass:
      dist:
        options:
          sassDir: 'sass'
          cssDir: 'themes'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-compass'

  grunt.registerTask 'default', ['coffee', 'uglify', 'compass']

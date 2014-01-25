module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    sass:
      dist:
        files:
          'dist/spinnach.css': 'src/spinnach.scss'

    cssmin:
      options:
        banner: '/*!' +
          '\n  <%= pkg.name %> v<%= pkg.version %>' +
          '\n  Written by <%= pkg.author.name %>' +
          '\n  <%= pkg.author.url %>' +
          '\n  <%= pkg.author.email %>' +
          '\n  License: <%= pkg.license %>' +
          '\n*/'
      combine:
        files:
          'dist/spinnach.min.css': 'dist/spinnach.css'

    uglify:
      options:
        banner: '/*!' +
          '\n  <%= pkg.name %> v<%= pkg.version %>' +
          '\n  Written by <%= pkg.author.name %>' +
          '\n  <%= pkg.author.url %>' +
          '\n  <%= pkg.author.email %>' +
          '\n  License: <%= pkg.license %>' +
          '\n*/\n'
      dist:
        files:
          'dist/spinnach.min.js': 'src/spinnach.js'

    jshint:
      dist:
        files: [
          expand: true
          cwd: "src/"
          src: ["*.js"]
          dest: "dist/"
        ]
        options:
          jshintrc: ".jshintrc" # Read hinting options from .jshintrc

  grunt.loadNpmTasks 'grunt-sass'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-jshint'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'build', ['sass', 'cssmin', 'jshint', 'uglify']

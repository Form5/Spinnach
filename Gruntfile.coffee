module.exports = (grunt) ->
  grunt.initConfig
    sass:
      dist:
        files:
          'dist/spinnach.css': 'src/spinnach.scss'

    cssmin:
      combine:
        files:
          'dist/spinnach.min.css': 'dist/spinnach.css'

    uglify:
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

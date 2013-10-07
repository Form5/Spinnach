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

    coffee:
      compile:
        files:
          'dist/spinnach.js': 'src/spinnach.coffee'

    uglify:
      dist:
        files:
          'dist/spinnach.min.js': 'dist/spinnach.js'

  grunt.loadNpmTasks 'grunt-sass'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'build', ['sass', 'cssmin', 'coffee', 'uglify']
module.exports = (grunt) ->
  grunt.initConfig
    sass:
      dist:
        files:
          'dist/spinnach.css': 'src/spinnach.scss'

  grunt.loadNpmTasks 'grunt-sass'

  grunt.registerTask 'build', ['sass']
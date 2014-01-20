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

  grunt.loadNpmTasks 'grunt-sass'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.loadNpmTasks 'grunt-contrib-uglify'

  grunt.registerTask 'build', ['sass', 'cssmin', 'uglify']
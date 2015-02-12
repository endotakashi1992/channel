gulp = require('gulp')
jade = require('gulp-jade')
webserver = require('gulp-webserver')

gulp.task 'compile',->
  gulp.src 'src/**/*.jade'
  .pipe jade()
  .pipe gulp.dest('dist/')

gulp.task 'webserver', ->
  gulp.src('dist').pipe webserver
    livereload: true
    open: false
gulp.task 'develop',['compile','webserver'],->
  gulp.watch 'src/**/*.jade',['compile']
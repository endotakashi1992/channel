gulp = require('gulp')
jade = require('gulp-jade')
webserver = require('gulp-webserver')

gulp.task 'compile',->
  gulp.src 'src/**/*.jade'
  .pipe jade()
  .pipe gulp.dest('dist/')

gulp.task 'webserver', (done)->
  gulp.src('dist').pipe webserver
    livereload: true
    open: false
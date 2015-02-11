gulp = require('gulp')
jade = require('gulp-jade')

gulp.task 'compile',->
  gulp.src 'src/**/*.jade'
  .pipe jade()
  .pipe gulp.dest('dist/')
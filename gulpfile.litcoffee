    gulp              = require('gulp')
    gutil             = require("gulp-util")
    sass              = require('gulp-sass')
    plumber           = require('gulp-plumber')
    watch             = require('gulp-watch')

Gulpfile
========

dependency
----------

    outPutFolder = "web/assets/"
    srcFolder = "src/"
    outPutViews = "./web"
    imgFolder = "./web/assets/images"
    console.log(outPutFolder)
    console.log(srcFolder)

error function
--------------

    error = (message)->
      console.log("Error : "+ message.toString())


global watch
------------

    gulp.task 'sass', ()->
      gulp.src(srcFolder+"sass/**/*.scss")
        .pipe plumber
          errorHandler: error
        .pipe(sass().on('error', sass.logError))
        .pipe(gulp.dest(outPutFolder+"css/"))

    gulp.task "watch", ["sass"], ()->
      gulp.watch(srcFolder+"sass/**/*.scss", ["sass"])

    gulp.task('default', ['watch'])



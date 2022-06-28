var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');



require('dotenv').config();
var session = require('express-session');
var fileUpload = require('express-fileupload')

var pool = require('./models/bd');


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var loginRouter = require('./routes/admin/login'); 
var adminRouter = require('./routes/admin/novedades')
const req = require('express/lib/request');
const async = require('hbs/lib/async');


var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session({
  secret: 'abcdefgh1',
  resave: false,
  saveUninitialized: true
}));





secured = async (req, res, next) => {
  try {
    console.log(req.session.id_usuario)
    if (req.session.id_usuario) {
      next();
    } else {
      res.redirect('/admin/login')
    }
  } catch (error) {
    console.log(error);
  }
}

app.use(fileUpload({
  useTempFiles: true,
  tempFileDir: '/tmp/'

}));



app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/admin/login', loginRouter);
app.use('/admin/novedades', secured, adminRouter);


 

// pool.query('select * from novedades').then(function (resultados) {
//   console.log(resultados)
// });

// var obj = {
//   nombre: 'sofia',
//   apellido: 'armesto',
//   edad: 32,
//   trabajo: 'entrenadora',
//   salario: 500000,
//   email: 'sofia@hotmail.com'
// }

// pool.query('insert into empleados set ?',[obj]).then(function (resultados) {
//   console.log(resultados)
// });

// var id = 1;
// var obj = {
//   nombre: 'lorenzo',
//   apellido: 'arguello'
// }

// pool.query('update empleados set ? where id_empleados=?', [obj, id]).then(function (resultados) {
//   console.log(resultados)
// });

// var id = 11
// pool.query('delete from empleados where id_empleados=?', [id]).then(function (resultados) {
//   console.log(resultados)
// });











app.use(session({
  secret: '1234ivan',
  resave: false,
  saveUninitialized: true
}));

app.use(function (req, res, next) {
  if (!req.session.vistas) {
    req.session.vistas = {};
  }

  if (!req.session.vistas[req.originalUrl]) {
    req.session.vistas[req.originalUrl] = 1;
  } else {
    req.session.vistas[req.originalUrl]++;
  }
  console.log(req.session.vistas);

  next();
});

app.get('/contacto', function (req, res) {
  res.render('pagina', {
    nombre: 'contacto',
    vistas: req.session.vistas[req.originalUrl]

  });
});

app.get('/trainers', function (req, res) {
  res.render('pagina', {
    nombre: 'trainers',
    vistas: req.session.vistas[req.originalUrl]

  });
});


app.get('/home', function (req, res) {
  res.render('pagina', {
    nombre: 'home',
    vistas: req.session.vistas[req.originalUrl]

  });
});


app.get('/clases', function (req, res) {
  res.render('pagina', {
    nombre: 'clases',
    vistas: req.session.vistas[req.originalUrl]

  });
});


// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;

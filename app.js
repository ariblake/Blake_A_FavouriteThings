const express = require('express');
const path = require('path');
const hbs = require('hbs');

// set the port
const port = process.env.PORT || 3000;

const app = express();

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'hbs');
app.set('views', path.join(__dirname, 'views'));

// anytime someone comes to the route of our site, use the index page
app.use('/', require('./routes/index'));

// error handling - if we don't find a matching route the application will use this stuff instead
app.use((req, res, next) => {
    var err = new Error('Not Found'); // Error is generic object we can set
    err.status = 404; // we can set the status
    err.customMessage = "Yikes! Something went wrong!";

    next(err); // fall through to the next route
})

// takes the error message and shows it to the user
app.use((err, req, res, next) => {
    res.render('error', {data: err, layout: 'errorPage'}); //instead of layout, render errorPage where index.html is
})

app.listen(port, () => {
    console.log(`app is running on ${port}`);
})


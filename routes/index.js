const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');

//route 1
router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, Title, Description, Image, Category FROM tbl_things";

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        //console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { people: result });
    })
})

//route 2
//looking for localhost:3000/anything
router.get('/users/:id', (req, res) => {
    console.log('hit a dynamic route!')
    console.log(req.params.id);

    let query = `SELECT * FROM tbl_things WHERE ID="${req.params.id}"`;

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        //turn our social property into an array - it's just text in the DB which isn't really anything we can work with
        //split on the comma so that each word is one index in the array
        //result[0].social = result[0].social.split(",").map(function(item) {
        //    item = item.trim(); //remove the extra spaces from each word

        //    return item;
        //}); 

        //console.log('after split: ', result[0]); 

        // render the home view with dynamic data
        //res.render('home', { people: result });

        //send the DB query back to the browser
        res.json(result);
    })
})

module.exports = router;
const express = require('express');
const router = express.Router();
const db = require('../config/database');
const Gig = require('../models/Gigs');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

router.get('/', (req, res) =>
  Gig.findAll()
  .then(gigs => {
    res.render('gigs', {
      gigs
    });
  })
  .catch(err => console.log(err))
);

router.get('/add', (req, res) => {
  res.render('add');
});

router.post('/add', (req, res) => {
  let {
    title,
    technologies,
    budget,
    description,
    contact_email
  } = req.body;
  let errors = [];

  // Server side validation
  if (!title) {
    errors.push({
      text: 'Please add a title'
    });
  }
  if (!technologies) {
    errors.push({
      text: 'Please add some technologies'
    });
  }
  if (!description) {
    errors.push({
      text: 'Please add description'
    });
  }
  if (!contact_email) {
    errors.push({
      text: 'Please add contact email'
    });
  }

  // Check for errors
  if (errors.length > 0) {
    res.render('add', {
      errors,
      title,
      technologies,
      budget,
      description,
      contact_email,
    })
  } else {
    if (!budget) {
      budget = 'Unknown';
    } else {
      budget = `$${budget}`;
    }

    // Make lowercase and remove space after comma.
    technologies = technologies.toLowerCase().replace(/, /g, ',');
    // Insert into Table
    Gig.create({
        title,
        technologies,
        description,
        budget,
        contact_email,
      })
      .then(gig => res.redirect('/gigs'))
      .catch(err => console.log(err));
  }
});

router.get('/gallery', (req, res) => {
  res.render('gallery');
});

router.get('/search', (req, res) => {
  let {
    search
  } = req.query;

  // Convert to lowercase
  search = search.toLowerCase();
  Gig.findAll({
    where: {
      technologies: {
        [Op.like]: '%' + search + '%'
      }
    }
  })
    .then(gigs => res.render('gigs', { gigs }))
    .catch(err => console.log(err));

});

module.exports = router;
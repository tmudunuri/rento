const router = require('express').Router();

const cotenantController = require('../controllers/cotenantController');

router.post('/add', cotenantController.save);
router.get('/update/:TID/:NAME', cotenantController.edit);
router.post('/update/:TID/:NAME', cotenantController.update);
router.get('/delete/:TID/:NAME', cotenantController.delete);

module.exports = router;


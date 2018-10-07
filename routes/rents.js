const router = require('express').Router();

const rentsController = require('../controllers/rentsController');

router.post('/add', rentsController.save);
router.get('/update/:HID/:TID', rentsController.edit);
router.post('/update/:HID/:TID', rentsController.update);
router.get('/delete/:HID/:TID', rentsController.delete);

module.exports = router;


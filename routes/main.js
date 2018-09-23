const router = require('express').Router();

const mainController = require('../controllers/mainController');

router.get('/', mainController.list);
router.post('/add', mainController.save);
router.get('/update/:TID', mainController.edit);
router.post('/update/:TID', mainController.update);
router.get('/delete/:TID', mainController.delete);

module.exports = router;


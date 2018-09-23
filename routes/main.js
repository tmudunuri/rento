const router = require('express').Router();

const mainController = require('../controllers/mainController');

router.get('/', mainController.list);
router.post('/add', mainController.save);
router.get('/update/:id', mainController.edit);
router.post('/update/:id', mainController.update);
router.get('/delete/:id', mainController.delete);

module.exports = router;


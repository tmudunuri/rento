const router = require('express').Router();

const houseController = require('../controllers/houseController');

router.get('/', houseController.list);
router.post('/add', houseController.save);
router.get('/update/:HID', houseController.edit);
router.get('/view/:HID', houseController.view);
router.post('/update/:HID', houseController.update);
router.get('/delete/:HID', houseController.delete);

module.exports = router;
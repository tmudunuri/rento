const router = require('express').Router();

const propertyController = require('../controllers/propertyController');

router.get('/',  propertyController.list);
router.post('/add', propertyController.save);
router.get('/update/:PID', propertyController.edit);
router.get('/view/:PID', propertyController.view);
router.post('/update/:PID', propertyController.update);
router.get('/delete/:PID', propertyController.delete);

module.exports = router;
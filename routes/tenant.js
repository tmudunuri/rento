const router = require('express').Router();

const tenantController = require('../controllers/tenantController');

router.get('/', tenantController.list);
router.post('/add', tenantController.save);
router.get('/update/:TID', tenantController.edit);
router.get('/view/:TID', tenantController.view);
router.post('/update/:TID', tenantController.update);
router.get('/delete/:TID', tenantController.delete);

module.exports = router;


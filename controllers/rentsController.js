const controller = {};

controller.save = (req, res) => {
  const data = req.body;
  console.log(req.body)
  req.getConnection((err, connection) => {
    const query = connection.query('INSERT INTO RENTS set ?', data, (err, customer) => {
      console.log(customer)
      res.redirect('/tenant');
    })
  })
};


controller.edit = (req, res) => {
  const { HID,TID } = req.params;
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM RENTS WHERE HID = ? AND TID = ?', [HID,TID], (err, rows) => {
      res.render('pages/rents_edit', {
        data: rows[0]
      })
    });
  });
};

controller.update = (req, res) => {
  const { HID,TID } = req.params;
  const newCoTenant = req.body;
  req.getConnection((err, conn) => {
    conn.query('UPDATE RENTS set ? WHERE HID = ? AND TID = ?', [newCoTenant, HID, TID], (err, rows) => {
      res.redirect('/tenant');
    });
  });
};

controller.delete = (req, res) => {
  const { HID,TID } = req.params;
  req.getConnection((err, connection) => {
    connection.query('DELETE FROM CO_TENANT WHERE HID = ? AND TID = ?', [HID,TID], (err, rows) => {
      res.redirect('/tenant');
    });
  });
}

module.exports = controller;

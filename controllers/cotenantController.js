const controller = {};

controller.save = (req, res) => {
  const data = req.body;
  console.log(req.body)
  req.getConnection((err, connection) => {
    const query = connection.query('INSERT INTO CO_TENANT set ?', data, (err, customer) => {
      console.log(customer)
      res.redirect('/tenant');
    })
  })
};


controller.edit = (req, res) => {
  const { TID,NAME } = req.params;
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM CO_TENANT WHERE TID = ? AND NAME = ?', [TID,NAME], (err, rows) => {
      res.render('pages/co_tenant_edit', {
        data: rows[0]
      })
    });
  });
};

controller.update = (req, res) => {
  const { TID,NAME } = req.params;
  const newCoTenant = req.body;
  req.getConnection((err, conn) => {
    conn.query('UPDATE CO_TENANT set ? WHERE TID = ? AND NAME = ?', [newCoTenant, TID,NAME], (err, rows) => {
      res.redirect('/tenant');
    });
  });
};

controller.delete = (req, res) => {
  const { TID,NAME } = req.params;
  req.getConnection((err, connection) => {
    connection.query('DELETE FROM CO_TENANT WHERE TID = ? AND NAME = ?', [TID,NAME], (err, rows) => {
      res.redirect('/tenant');
    });
  });
}

module.exports = controller;

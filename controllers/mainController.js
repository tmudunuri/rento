const controller = {};

controller.list = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM TENANT', (err, app) => {
     if (err) {
      res.json(err);
    }
    res.render('pages/main', {
      data: app
    });
  });
  });
};

controller.save = (req, res) => {
  const data = req.body;
  console.log(req.body)
  req.getConnection((err, connection) => {
    const query = connection.query('INSERT INTO TENANT set ?', data, (err, customer) => {
      console.log(customer)
      res.redirect('/main');
    })
  })
};


controller.edit = (req, res) => {
  const { TID } = req.params;
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM TENANT WHERE TID = ?', [TID], (err, rows) => {
      res.render('pages/tenant_edit', {
        data: rows[0]
      })
    });
  });
};

controller.update = (req, res) => {
  const { TID } = req.params;
  const newTenant = req.body;
  req.getConnection((err, conn) => {
    conn.query('UPDATE TENANT set ? WHERE TID = ?', [newTenant, TID], (err, rows) => {
      res.redirect('/main');
    });
  });
};

controller.delete = (req, res) => {
  const { TID } = req.params;
  req.getConnection((err, connection) => {
    connection.query('DELETE FROM TENANT WHERE TID = ?', [TID], (err, rows) => {
      res.redirect('/main');
    });
  });
}

module.exports = controller;

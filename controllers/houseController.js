const controller = {};

controller.list = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM HOUSE', (err, app) => {
     if (err) {
      res.json(err);
    }
    res.render('pages/house', {
      data: app
    });
  });
  });
};

controller.save = (req, res) => {
  const data = req.body;
  console.log(req.body)
  req.getConnection((err, connection) => {
    const query = connection.query('INSERT INTO HOUSE set ?', data, (err, customer) => {
      console.log(customer)
      res.redirect('/house');
    })
  })
};


controller.edit = (req, res) => {
  const { HID } = req.params;
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM HOUSE WHERE HID = ?', [HID], (err, rows) => {
      res.render('pages/house_edit', {
        data: rows[0]
      })
    });
  });
};


controller.view = (req, res) => {
  const { HID } = req.params;
  req.getConnection((err, conn) => {
    conn.query('SELECT T.NAME, T.ADDRESS, T.PHONE, T.GENDER, T.AADHAR, T.AGE, H.MAINTENANCE, R.HID, R.TID, R.DEPOSIT, R.RENT, R.START_DATE, R.END_DATE FROM RENTS R, HOUSE H, TENANT T WHERE H.HID = R.HID AND T.TID = R.TID AND H.HID = ?', [HID], (err, rows) => {
      res.render('pages/house_view', {
        data: rows
      })
    });
  });
};


controller.update = (req, res) => {
  const { HID } = req.params;
  const newHouse = req.body;
  req.getConnection((err, conn) => {
    conn.query('UPDATE HOUSE set ? WHERE HID = ?', [newHouse, HID], (err, rows) => {
      res.redirect('/house');
    });
  });
};

controller.delete = (req, res) => {
  const { HID } = req.params;
  req.getConnection((err, connection) => {
    connection.query('DELETE FROM HOUSE WHERE HID = ?', [HID], (err, rows) => {
      res.redirect('/house');
    });
  });
}


controller.refresh = (req, res) => {
  req.getConnection((err, connection) => {
  connection.query('CALL auto_inc_reset(3)', (err, rows) => {
      res.redirect('/house');
    });
  });
}


module.exports = controller;

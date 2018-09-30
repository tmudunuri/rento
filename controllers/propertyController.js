const controller = {};

controller.list = (req, res) => {
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM PROPERTY', (err, app) => {
     if (err) {
      res.json(err);
    }
    res.render('pages/property', {
      data: app
    });
  });
  });
};

controller.save = (req, res) => {
  const data = req.body;
  console.log(req.body)
  req.getConnection((err, connection) => {
    const query = connection.query('INSERT INTO PROPERTY set ?', data, (err, customer) => {
      console.log(customer)
      res.redirect('/property');
    })
  })
};


controller.edit = (req, res) => {
  const { PID } = req.params;
  req.getConnection((err, conn) => {
    conn.query('SELECT * FROM PROPERTY WHERE PID = ?', [PID], (err, rows) => {
      res.render('pages/property_edit', {
        data: rows[0]
      })
    });
  });
};


controller.view = (req, res) => {
  const { PID } = req.params;
  req.getConnection((err, conn) => {
    conn.query('SELECT H.HID, H.ROOMS, H.FLOOR, H.AREA, H.TYPE, H.MAINTENANCE, H.PARKING, H.FURNISHED, P.PID FROM PROPERTY P, HOUSE H WHERE H.PID = P.PID AND P.PID = ?', [PID], (err, rows) => {
      res.render('pages/property_view', {
        data: rows
      })
    });
  });
};


controller.update = (req, res) => {
  const { PID } = req.params;
  const newTenant = req.body;
  req.getConnection((err, conn) => {
    conn.query('UPDATE PROPERTY set ? WHERE PID = ?', [newTenant, PID], (err, rows) => {
      res.redirect('/property');
    });
  });
};

controller.delete = (req, res) => {
  const { PID } = req.params;
  req.getConnection((err, connection) => {
    connection.query('DELETE FROM PROPERTY WHERE PID = ?', [PID], (err, rows) => {
      res.redirect('/property');
    });
  });
}

module.exports = controller;

var express =     require("express");
var app     =     express();
var mysql   =     require("mysql");
var http    =     require('http').Server(app);
var io      =     require("socket.io")(http);
var path    =     require("path");
app.use(express.static(path.join(__dirname, 'admin')));

/* Creating POOL MySQL connection.*/

var pool    =    mysql.createPool({
      connectionLimit   :   100,
      host              :   'localhost',
      user              :   'root',
      password          :   '123456',
      database          :   'fbstatus',
      debug             :   false
});

app.get("/",function(req,res){
    res.sendFile(__dirname + '/pages/index.html');
});

/*  This is auto initiated event when Client connects to Your Machien.  */
io.on('connection',function(socket){  
    console.log("A user is connected");

    socket.on('sale-init-get',function(){
        var q = "SELECT * FROM tables ORDER BY id ASC";
        sale_init(q, function(res1){
        if(res1){
          var q = "SELECT * FROM dishs ORDER BY id ASC";
          sale_init(q, function(res2){
            if(res2){
                io.emit('sale-init-result', {tables: res1, dishs: res2});
            } else {
                io.emit('error');
            }
          });
        } else {
            io.emit('error');
        }
      });
    });

    socket.on('new-order',function(data){

        var q = "SELECT * FROM dishs ORDER BY id ASC";
        sale_init(q, function(res){
          if(res){
              for (var i = res.length - 1; i >= 0; i--) {
                var id = res[i].id;
                if(data && data[id] !== undefined){
                  res[i].remain = data[id];
                }
              }
              console.log(res);
              io.emit('new-order', res);
          } else {
              io.emit('error');
          }
        });
    });

});

var sale_init = function (q, callback) {
    pool.getConnection(function(err,connection){
        if (err) {
          callback(false);
          return;
        }

        connection.query(q,function(err,rows){

            connection.release();
            if(!err) {
              callback(rows);
            }
        });
     connection.on('error', function(err) {
              callback(false);
              return;
        });
    });
}

http.listen(3000,function(){
    console.log("Listening on 3000");
});

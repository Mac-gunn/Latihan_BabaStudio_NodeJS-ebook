var multer = require('multer');

exports.login = function(req, res){
    var message = '';
    if(req.method == 'POST'){
        var post= req.body;
        var name= post.username;
        var pass = post.password;

        req.getConnection(function(err, connect){
            var sql = "Select * from admin_tbl where username='"+name+"' and password='"+pass+"'";
            var query = connect.query(sql, function(err, results){
                if(results.length){
                    req.session.adminId=results[0].id_admin
                    req.session.admin=results[0];
                    console.log(results[0].id_admin);
                    res.redirect('./dashboard');
                }else{
                    message="username or password inkurek";
                    res.render('./admin/login',{message:message,sql:sql});
                }
            });
        });

    }else{
        res.render('./admin/login',
        {message:message});
    }
}

exports.home = function(req, res){
            var admin = req.session.admin;
            var adminId = req.session.adminId;
            console.log('id admin '+ adminId);

            if(adminId == null){
                res.redirect('/express/admin/login');
                return;
            }



            req.getConnection(function(err, connect) {
                var sql = "SELECT * FROM news_tbl";
                var query = connect.query(sql, function(err, results) {
                // jika koneksi dan query berhasil, tampilkan home admin!
                res.render('./admin/starter', {
                pathname: 'home',
                data: results
                });
                });
        });
}

exports.dashboard = function(req, res){
    var admin = req.session.admin;
    var adminId = req.session.adminId;
    console.log('id admin '+ adminId);

    if(adminId == null){
        res.redirect('/express/admin/login');
        return;
    }


    res.render('./admin/starter',
    {pathname:'dashboard'});
}

exports.add_news = function(req, res){
    var admin = req.session.admin;
    var adminId = req.session.adminId;
    console.log('id admin '+ adminId);

    if(adminId == null){
        res.redirect('/express/admin/login');
        return;
    }

    res.render('./admin/starter',{
    pathname:'add_news'});
}

exports.edit_news = function(req, res){
    var admin = req.session.admin;
    var adminId = req.session.adminId;
    console.log('id admin '+ adminId);

    if(adminId == null){
        res.redirect('/express/admin/login');
        return;
    }

    var title = req.params.title;

    req.getConnection(function(err, connect){
        var sql = "select * from news_tbl where title ='"+title+"'";
        console.log(sql);
        var query = connect.query(sql, function(err, results){
            if(err){
                console.log("Err show news : %s", err);
            }

            res.render('./admin/starter',
            {   pathname:'edit_news',
                title:title,
                data : results
            });
        });
    });
}

exports.delete_news = function(req, res){
    var admin = req.session.admin;
    var adminId = req.session.adminId;
    console.log('id admin '+ adminId);

    if(adminId == null){
        res.redirect('/express/admin/login');
        return;
    }

    
    var title = req.params.title;

    req.getConnection(function(err, connect){
        var sql = "delete from news_tbl where title='"+title+"'";

        var query = connect.query(sql, function(err, results){
        if(err){
            console.log("err delete %s", err);
        }
        req.flash('info', 'Success delete data! Data has been updated.');
        res.redirect('/express/admin/home');
        });
    });
}

exports.log_out = function(req, res){
    req.session.destroy(function(err){
        res.redirect('/express/admin/login');
    });
}



exports.process_add_news = function(req, res){
    var storage = multer.diskStorage({
        destination: './Public/img',
        filename : function(req, file, callback){
            callback(null,file.originalname);
        }
    });

    var upload = multer({storage: storage}).single('image');

    upload(req, res, function(err){
        if(err){
            return res.end('error uploading image');
        }

        console.log(req.file);
        console.log(req.body);
    
    req.getConnection(function(err, connect){
        //tangkap nilai / value dari body
        var post={
            title: req.body.title,
            article: req.body.article,
            image : req.file.filename
        }
        console.log(post);

        var sql="insert into news_tbl set ?";

        var query = connect.query(sql, post, function(err, results){
            if(err){
                console.log("error input news %s", err);
            }
            req.flash('info', 'Success add data! Data has been updated.');
            res.redirect('/express/admin/home');
        });
        });
    });

}

exports.process_edit_news =function(req, res){
    var title = req.params.title;

    var storage = multer.diskStorage({
        destination: './Public/img',
        filename: function(req, file, callback) {
        callback(null, file.originalname);
        }
    });

    var upload = multer({ storage: storage }).single('image');
    var date = new Date(Date.now());
    
    upload(req, res, function(err) {
        if (err) {
            var image = req.body.image_old;
            console.log("Error uploading image!");
        } else if (req.file == undefined) {
            var image = req.body.image_old;
        } else {
            var image = req.file.filename;
        }

        console.log(req.file);
        console.log(req.body);

        req.getConnection(function(err, connect) {
            var post = {
            title: req.body.title,
            article: req.body.article,
            image: image
            }
            var sql = "UPDATE news_tbl SET ? WHERE title=?";

            var query = connect.query(sql, [post, title], function(err, results) {
            if (err) {
            console.log("Error edit news: %s", err);
            }

            req.flash('info', 'Success edit data! Data has been updated.');
            res.redirect('/express/admin/home');

            });
        });
    });
}

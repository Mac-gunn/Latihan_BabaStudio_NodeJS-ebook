exports.home=function(req, res){
	req.getConnection(function(err,connect){
	var query = connect.query('select * from news_tbl limit 6', 
		function(err, rows){
			if(err){
				console.log("error %",err);
			}
 
			res.render('index',{
				page_title : "Express news",
				data: rows
			});
		});
	});
}

exports.news=function(req, res){
	var title = req.params.id;
	req.getConnection(function(err, connect){
	var query = connect.query('select * from news_tbl where title =?', title,
		function(err, rows){
			if(err){
				console.log('error : %', err);
			}
			res.render('news',{
				page_title : "News",
				datax: rows
			});
		});
	});
	var x=1+1;
}

exports.company=function(req, res){
	res.render('company');
}

exports.contact=function(req, res){
	res.render('contact');
}

exports.services=function(req, res){
	res.render('services');
}




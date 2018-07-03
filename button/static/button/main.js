$('.button').click(function(e){
	$.post('buttonSubmit',
		{
			'username': $('textarea')[0].value,
		},
		function(data, status){
			$('.display').html(data);
		}
	);
})

$('.buttonReset').click(function(e){
	if ($('textarea')[0].value == "ceviri"){
		$.post('reset',
			{
			},
			function(data, status){
				$('.display').html(data);
			}
		);
	}
})


setInterval(function(){
	$.post('buttonSubmit',
		{
			'username': "",
		},
		function(data, status){
			$('.display').html(data);
		}
	);
}, 100);
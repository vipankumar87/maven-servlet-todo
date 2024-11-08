/**
 * 
 */

(function($){
	$(document).on('submit','#todoForm', async function(e){
		let taskTitle = $('#taskTitle').val();
		let taskDueDate = $('#taskDueDate').val();
		
		if(taskDueDate.trim().length <=3 || taskTitle.trim().length <=3){
			alert("Invalid task entry");
			e.preventDefault();
			return false;
		}
		
		await fetch(POST_TODO, {
			method: POST, 
			headers: {
				"Content-Type": 'application/json'
			},
			body: JSON.stringify({taskDueDate, taskTitle})
		}).then(respose=>{
			if(!respose.ok){
				throw new Error("Network response wasn't ok")
			}
			return response.json();
		}).then(data=>{
			alert("Task added")
			console.log("Response: ", data)
		}).catch(error => {
			console.error("There was some error duriing fetch operations", error);
			alert("faild to add task")
		})
	})
})(jQuery)
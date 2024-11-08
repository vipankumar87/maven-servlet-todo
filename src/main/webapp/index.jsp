<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
	<script type="text/javascript">
		var POST_TODO = "${pageContext.request.contextPath}/todo";
	</script>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">To-Do List - Add a Task</h2>
        <form id="todoForm" method="post" action="" novalidate>
            <div class="mb-3">
                <label for="taskTitle" class="form-label">Task Title</label>
                <input type="text" class="form-control" id="taskTitle" placeholder="Enter task title" required name="taskTitle">
            </div>
            <div class="mb-3">
                <label for="taskDueDate" class="form-label">Due Date</label>
                <input type="date" class="form-control" id="taskDueDate" required name="taskDueDate">
            </div>
            <button type="submit" class="btn btn-primary">Add Task</button>
        </form>
    </div>
   	<script src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
   	<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
   	<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>

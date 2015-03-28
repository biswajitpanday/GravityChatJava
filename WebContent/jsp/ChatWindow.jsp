<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gravity Chat</title>

<script language="Javascript">//below are the constants defined for the message type
	CHATMESSAGE = "chatmessage";//message format is : chatmessage#from#to#message=message
	NEWUSER = "newuser";//newuser#username
	GROUPCHATMESSAGE="groupchatmessage";
	ERRORMESSAGE="error";
	LOGEDOUT='logedout';
</script>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- <script language="Javascript" type="text/javascript" src="../js/jquery1.7.1.js"></script> -->
<script language="Javascript" type="text/javascript" src="../js/clientServerOperationsHandler.js"></script>
<script language="Javascript" type="text/javascript" src="../js/push_client.js"></script>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script language="Javascript" type="text/javascript" src="${pageContext.request.contextPath}/dist/js/material.min.js"></script>
<script language="Javascript" type="text/javascript" src="${pageContext.request.contextPath}/dist/js/ripples.min.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/material.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/material-wfont.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/dist/css/ripples.min.css">

<link rel="stylesheet" type="text/css" href="../css/style.css">

<!-- <script type="text/javascript">
	$(function() {
	    $.material.init();
	});
</script> -->

</head>
<body>
	<div class="row">
		<div class="col-sm-12 col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3">
			<div class="panel panel-default">
				<div class="panel-body">
					<h1>Gravity Chat</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-sm-12 col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3">
			<div class="panel panel-default">
				<div class="panel-body">
					<h4 class="loginUserDetails"></h4>
				</div>
			</div>

		</div>
	</div>

	<div id="loginDiv" class="loginDiv" align="center">
		<div class="inputs">
			<input type="text" id="userName" class="form-control floating-label" placeholder="User Name" name="userName"> 
			<input type="button" id="login" class="btn btn-primary btn-raised" value="Login">
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="groupChat chatboxmat">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title boxTitle">Group chat</h3>
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-lg-10">
								<textarea rows="3" id="groupChatHistory textArea"
									class="form-control groupChat groupChatHistory" readonly="true"></textarea>
								<br />
								<br />
								<br />
								<textarea rows="1" id="groupChatBox textArea"
									class="form-control groupChatBox" placeholder="Your Message"></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-primary onlineUsersDIV">
				<div class="panel-heading">
					<h3 class="panel-title boxTitle">Online Users</h3>
				</div>
				<div class="panel-body">
					<div class="form-group">
						<div class="col-lg-10">
							<ul class="onlineUsersUL"></ul>
							<!-- This will hold all the online users -->
						</div>
					</div>
				</div>
			</div>

			<div class="chatRoom" style="float: right; width: 200px;"></div>

		</div>
	</div>

	<div class="allChatDivs"></div>

</body>
</html>
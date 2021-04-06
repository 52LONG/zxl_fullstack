<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="post">
    <select name="region" id="region">
        <option disabled selected></option>
        <option value="region.code">region.name</option>
        <option value="region.code2">region.name</option>
    </select>

    <select name="item">
        <option value="item.code">item.code</option>
        <option value="item.code2">item.code2</option>
    </select>


</form>


<script type="text/javascript">
    let value = document.getElementById("region").onselect.value;
    alert(value);

</script>
</body>
</html>

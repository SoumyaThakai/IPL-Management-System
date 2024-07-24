<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RANKS</title>
    <style>
        body {
            background-color: #F4F4F9;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 20px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }
        button a {
            color: white;
            text-decoration: none;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        table th {
            background-color: #4CAF50;
            color: white;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        table tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>

    

    <div>
        <h1>Board Details</h1>
        <table>
            <tr>
                <th>Board Name</th>
                <th>Team's Board</th>
                <th>DOI</th>
            </tr>
            <?php
                $con = mysqli_connect("localhost", "root", "", "cricket");
                $query = "SELECT sd.DOI, sd.board_name, sd.team FROM stadiums sd";
                $result = mysqli_query($con, $query);
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>
                                <td>".$row["board_name"]."</td>
                                <td>".$row["team"]."</td>
                                <td>".$row["DOI"]."</td>
                              </tr>";
                    }
                }
                mysqli_close($con);
            ?>
        </table>
    </div>
	<button><a href="user1st.html">Back</a></button>
</body>
</html>

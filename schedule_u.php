<!DOCTYPE html>
<html>
<head>
    <title>SCHEDULES</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #F2EBE9;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #000;
        }
        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
            color: #243A73;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e0e0e0;
        }
        .button-back {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-bottom: 20px;
            border-radius: 5px;
            
        }
        .button-back:hover {
            background-color: #0056b3;
        }
        .form-container {
            text-align: center;
            margin-top: 20px;
        }
        .form-container input[type=number] {
            width: 300px;
            height: 25px;
            font-size: 16px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-container input[type=submit] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 5px;
        }
        .form-container input[type=submit]:hover {
            background-color: #45a049;
        }
        h1 {
            text-align: center;
            color: #7C3E66;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        
        <h1>Schedules</h1>
        <table>
            <tr>
                <th>Date</th>
                <th>Team 1</th>
                <th>Team 2</th>
                <th>Match Number</th>
                <th>Venue</th>
            </tr>
            <?php
            $con = mysqli_connect("localhost", "root", "", "cricket");
            $query = "SELECT s.date, s.team1, s.team2, s.match_no, sd.stadium_name 
                      FROM schedules s 
                      JOIN stadiums sd ON s.date = sd.DOI 
                    --   WHERE sd.team = s.team2 OR sd.team = s.team1";
            $result = mysqli_query($con, $query);
            if(mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr><td>".$row["date"]."</td><td>".
                         $row["team1"]."</td><td>".
                         $row["team2"]."</td><td>".
                         $row["match_no"]."</td><td>".$row["stadium_name"]."</td></tr>";
                }
            }
            mysqli_close($con);
            ?>
        </table>

        <div class="form-container">
            <form action="ttu.php" method="post">
                <p>Enter Match Number to retrieve players</p>
                <input type="number" name="match_no" required>
                <br><br>
                <input type="submit" value="Submit">
				<button class="button-back"><a href="user1st.html">Back</a></button>
            </form>
        </div>
    </div>
</body>
</html>

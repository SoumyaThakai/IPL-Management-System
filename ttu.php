<!DOCTYPE html>
<html>
<head>
    <title>Match Squad</title>
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
            background-color: #E1F7F5;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .button-back {
            background-color: #3ABEF9;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: block;
            width: fit-content;
            font-size: 16px;
            margin: 20px auto 0; /* Center horizontally with top margin and no bottom margin */
            border-radius: 5px;
        }
        .button-back:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            margin-bottom: 20px; /* Added margin-bottom to create space between tables */
        }
        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: blue;
            color: #0000ff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e0e0e0;
        }
        .team-container {
            width: 48%;
            float: left;
            margin-right: 2%;
        }
        .team-header {
            background: linear-gradient(to right, #64b5f6, #1976d2);
            color: white;
            text-align: center;
            padding: 10px;
            border-radius: 5px 5px 0 0;
        }
        .team-players {
            border: 1px solid #ccc;
            border-top: none;
            border-radius: 0 0 5px 5px;
        }
        .team-players th {
            background-color: #f5f5f5;
            font-weight: normal;
        }
        .team-players td {
            background-color: #fff;
        }
        h1 {
            text-align: center;
            color: #402E7A;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Match Squad Details</h1>

        <div class="team-container">
            <div class="team-header">
                <?php
                $con = mysqli_connect("localhost", "root", "", "cricket");
                $match_no = $_POST['match_no'];
                $query = "SELECT team1 FROM schedules WHERE match_no='$match_no'";
                $result = mysqli_query($con, $query);
                if(mysqli_num_rows($result) > 0) {
                    $row = mysqli_fetch_assoc($result);
                    echo "Squad for ".$row["team1"];
                }
                mysqli_close($con);
                ?>
            </div>
            <table class="team-players">
                <?php
                $con = mysqli_connect("localhost", "root", "", "cricket");
                $query = "SELECT p.playername FROM schedules s, player p WHERE s.team1=p.name AND s.match_no='$match_no'";
                $result = mysqli_query($con, $query);
                if(mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr><td>".$row["playername"]."</td></tr>";
                    }
                }
                mysqli_close($con);
                ?>
            </table>
         
        </div>

        <div class="team-container">
            <div class="team-header">
                <?php
                $con = mysqli_connect("localhost", "root", "", "cricket");
                $query = "SELECT team2 FROM schedules WHERE match_no='$match_no'";
                $result = mysqli_query($con, $query);
                if(mysqli_num_rows($result) > 0) {
                    $row = mysqli_fetch_assoc($result);
                    echo "Squad for ".$row["team2"];
                }
                mysqli_close($con);
                ?>
            </div>
            <table class="team-players">
                <?php
                $con = mysqli_connect("localhost", "root", "", "cricket");
                $query = "SELECT p.playername FROM schedules s, player p WHERE s.team2=p.name AND s.match_no='$match_no'";
                $result = mysqli_query($con, $query);
                if(mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr><td>".$row["playername"]."</td></tr>";
                    }
                }
                mysqli_close($con);
                ?>
            </table>
        </div>

        <button class="button-back"><a href="schedule_u.php" style="color: white;">Back</a></button>
    </div>
</body>
</html>

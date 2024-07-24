<!DOCTYPE html>
<html>
<head>
    <title>Player Details</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            color: #333; /* Text color for readability */
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff; /* White background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        button {
            background-color: #4CAF50; /* Green button */
            color: white;
            border: none;
            padding: 10px 20px;
            margin-top: 20px;
            cursor: pointer;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }
        button a {
            color: white;
            text-decoration: none;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-top: 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 1px solid #ddd; /* Light gray border */
        }
        th, td {
            border: 1px solid #ddd; /* Light gray border */
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2; /* Light gray background for headers */
        }
        img {
            display: block;
            margin: 0 auto;
            max-width: 100%;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>

    

    <div class="container">

        <?php
        $con = mysqli_connect("localhost", "root", "", "cricket") or die(mysqli_error($con));
        $player = $_POST['playername'];
        $query = "SELECT * FROM player WHERE playername LIKE '%$player%'";
        $res = mysqli_query($con, $query);

        if (mysqli_num_rows($res) > 0) {
            while ($row = mysqli_fetch_assoc($res)) {
                echo '<h1>' . htmlspecialchars($row["playername"]) . '</h1>';
                echo '<img src="' . htmlspecialchars($row["image"]) . '" alt="Player Image">';
                echo '<table>';
                echo '<tr><th>PLAYER NAME</th><td>' . htmlspecialchars($row["playername"]) . '</td></tr>';
                
                echo '<tr><th>TEAM</th><td>' . htmlspecialchars($row["name"]) . '</td></tr>';
                echo '<tr><th>RUNS</th><td>' . htmlspecialchars($row["runs"]) . '</td></tr>';
                echo '<tr><th>TYPE</th><td>' . htmlspecialchars($row["type"]) . '</td></tr>';
                echo '<tr><th>BATTING BEST</th><td>' . htmlspecialchars($row["batting_best"]) . '</td></tr>';
                echo '<tr><th>BOWLING BEST</th><td>' . htmlspecialchars($row["bowling_best"]) . '</td></tr>';
                echo '</table>';
            }
        } else {
            echo "<h1>PLAYER NOT FOUND!!</h1>";
            echo "<script type='text/javascript'>setTimeout(function() { window.location.href = 'user1st.html'; }, 2000);</script>";
        }

        mysqli_close($con);
        ?>

    </div>
    <button><a href="user1st.html">Back</a></button><br><br>

</body>
</html>

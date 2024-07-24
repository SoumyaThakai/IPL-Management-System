<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>RANKS</title>
    <style>
        body {
            background-color: #EFEFEF;
            font-family: Arial, sans-serif;
        }
        button {
            background-color: #FFB534;
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
        }
         .ranking-table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        } 
        .ranking-table th, .ranking-table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        .ranking-table th {
            background-color: #4CAF50;
            color: white;
        }
        .ranking-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .ranking-table tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>

    

       <!-- <div>
        <table class="ranking-table">
            <tr>
                <th colspan="3"><h1>TEAM RANKING</h1></th>
            </tr>
            <tr>
                <th>Rank</th>
                <th>Name</th>
                <th>Rating</th>
            </tr> -->
            <!-- <?php  
             $con = mysqli_connect("localhost", "root", "", "cricket");
                // $query = "SELECT * FROM team ORDER BY rating DESC";
                // $result = mysqli_query($con, $query);
                // $i = 0;
                // if (mysqli_num_rows($result) > 0) {
                    // while ($row = mysqli_fetch_assoc($result)) {
                        // $i++;
                        // echo "<tr>
                                // <td>".floor($i)."</td>
                        //  <td>".$row["name"]."</td>
                                // <td>".$row["rating"]."</td>
                            //   </tr>";
                    // }
                // }
            // ?> 
        </table> 
     </div>  -->

    <div>
        <table class="ranking-table">
            <tr>
                <th colspan="4"><h1>BATSMAN RANKING</h1></th>
            </tr>
            <tr>
                <th>Name</th>
                <th>Rank</th>
                <th>Teamname</th>
                <th>Runs</th>
            </tr>
            <?php
                $query = "SELECT * FROM player WHERE type='batsman' ORDER BY runs DESC";
                $result = mysqli_query($con, $query);
                $i = 0;
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $i++;
                        echo "<tr>
                                <td>".$row["playername"]."</td>
                                <td>".floor($i)."</td>
                                <td>".$row["name"]."</td>
                                <td>".$row["runs"]."</td>
                              </tr>";
                    }
                }
            ?>
        </table>
    </div>

    <div>
        <table class="ranking-table">
            <tr>
                <th colspan="4"><h1>BOWLER RANKING</h1></th>
            </tr>
            <tr>
                <th>Name</th>
                <th>Rank</th>
                <th>Teamname</th>
                <th>Wickets</th>
            </tr>
            <?php
                $query = "SELECT * FROM player WHERE type='bowler' ORDER BY wickets DESC";
                $result = mysqli_query($con, $query);
                $i = 0;
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $i++;
                        echo "<tr>
                                <td>".$row["playername"]."</td>
                                <td>".floor($i)."</td>
                                <td>".$row["name"]."</td>
                                <td>".$row["wickets"]."</td>
                              </tr>";
                    }
                }
            ?>
        </table>
    </div>

    <div>
        <table class="ranking-table">
            <tr>
                <th colspan="5"><h1>ALL-ROUNDER RANKING</h1></th>
            </tr>
            <tr>
                <th>Name</th>
                <th>Rank</th>
                <th>Teamname</th>
                <th>Runs</th>
                <th>Wickets</th>
            </tr>
            <?php
                $query = "SELECT * FROM player WHERE type='allrounder' ORDER BY (runs + wickets * 2) DESC";
                $result = mysqli_query($con, $query);
                $i = 0;
                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $i++;
                        echo "<tr>
                                <td>".$row["playername"]."</td>
                                <td>".floor($i)."</td>
                                <td>".$row["name"]."</td>
                                <td>".$row["runs"]."</td>
                                <td>".$row["wickets"]."</td>
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

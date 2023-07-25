 <?php

            $query = "
            SELECT COUNT(c_id) AS total, DATE_FORMAT(c_datesave, '%d-%m-%Y') AS datesave
            FROM tbl_counter
            GROUP BY DATE_FORMAT(c_datesave, '%d%')
            ORDER BY DATE_FORMAT(c_datesave, '%Y-%m-%d') DESC
            ";
            $result = mysqli_query($condb, $query);
            $resultchart = mysqli_query($condb, $query);

           // echo $query;
            
            //for chart
            $datesave = array();
            $total = array();
            while($rs = mysqli_fetch_array($resultchart)){
            $datesave[] = "\"".$rs['datesave']."\"";
            $total[] = "\"".$rs['total']."\"";
            }
            $datesave = implode(",", $datesave);
            $total = implode(",", $total);
            
            ?>
            <h3 align="center">รายงานยอดผู้เข้าชมเว็บไซต์</h3>



<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.js"></script>
            <hr>
            <p align="center">
                <!--devbanban.com-->
                <canvas id="myChart" width="800px" height="300px"></canvas>
                <script>
                var ctx = document.getElementById("myChart").getContext('2d');
                var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                labels: [<?php echo $datesave;?>                
                ],
                datasets: [{
                label: 'รายงานแยกตามวัน',
                data: [<?php echo $total;?>],
                backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
                }]
                },
                options: {
                scales: {
                yAxes: [{
                ticks: {
                beginAtZero:true
                }
                }]
                }
                }
                });
                </script>
            </p>
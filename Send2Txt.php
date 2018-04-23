

<?php  
    $ID=$_POST['ID'];  
    $name=$_POST['name'];  
    $score=$_POST['score'];  
    $Skey=$_POST['Skey'];  
	// 上面为调用时需要传入的参数
    $DOCUMENT_ROOT=$_SERVER['DOCUMENT_ROOT'];  
    //  网络txt文本存放根目录地址
    date_default_timezone_set('Asia/Shanghai');  
    //  时间
    $date=date('Y-m-d H:i');  
  
?>  

<!DOCTYPE html>  
<html>  
<head lang="zh_CN">  
    <meta charset="gbk">   
    <title>Matlab成绩提交</title>  
</head>  
<body>  

 <?php 
$out_put_string=$date."\t".$ID."\t".$name."\t".$score."\t".$Skey."\t"."\n";  
// 输入txt文本的字符串格式及内容
@$fp=fopen("$DOCUMENT_ROOT/mycourse/submit/Quiz.txt",'ab');  
// 打开根目录下的txt文本文件，‘ab’表示二进制写入方式打开，将文件指针指向文件末尾。如果文件不存在则尝试创建之。
 
 flock($fp,LOCK_EX);  
    if(!$fp){  
        echo "<p><strong>提交失败，请重试</strong></p></body></html>";  
        exit;  
    }  
	
	fwrite($fp,$out_put_string,strlen($out_put_string));  
    flock($fp,LOCK_UN);  
  
    fclose($fp);  
    echo "<p>提交成功！</p>"; 
?>  
</body>  
</html>  
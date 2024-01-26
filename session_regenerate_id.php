<?php
// sessionをスタートしてidを再生成しよう．
session_start();
// 旧idと新idを表示しよう．

$old_id = session_id();

session_regenerate_id(true);

$new_id = session_id();


echo "旧ID:". $old_id."<br>";
echo "新ID:". $new_id."<br>";
exit();
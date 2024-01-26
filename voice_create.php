<?php
// var_dump($_POST);
// exit();
session_start();
include('functions.php');
check_session_id();

// データベース接続関数を呼び出し
$pdo = connect_to_db();

// POSTされたデータが存在しない、または空の場合はエラーを出力して処理を終了
if (
  !isset($_POST['recognizedText']) || $_POST['recognizedText'] === ''||
  !isset($_POST['username']) || $_POST['username'] === ''
) {
  exit('ParamError');
}

 // POSTされた音声データ（base64エンコード）
$recognizedText=$_POST["recognizedText"];
$username=$_POST['username'];

 // base64エンコードをデコード
// $decodeDate=base64_decode(preg_replace('#^data:audio/\w+;base64,#i', '', $encodedData));

// 各種項目設定
$dbn ='mysql:dbname=php_1222_f14;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// echo "DB接続成功";
// exit();

// SQL作成&実行
$sql = 'INSERT INTO voice_table (id, username,content, created_at, updated_at) VALUES (NULL, :username,:content, now(), now())';

$stmt = $pdo->prepare($sql);

// バインド変数を設定
$stmt->bindValue(':content', $recognizedText, PDO::PARAM_LOB);
$stmt->bindValue(':username', $username, PDO::PARAM_STR);


// SQL実行（実行に失敗すると `sql error ...` が出力される）
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

header('Location:input.php');
exit();

?>
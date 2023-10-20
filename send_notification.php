<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enviando de notificacion push</title>
</head>
<body>

<?php

    $url ="https://fcm.googleapis.com/v1/projects/notificaciones-14b4b/messages:send";

    $fields=array(
        "message"=>array(
            'token'=>$_REQUEST['token'],
            "notification"=>array(
                "body"=>$_REQUEST['body'],
                "title"=>$_REQUEST['title']
                )
        )
    );

        // genera un JSON que debe seguir este formato:
            // como se indica aqui: https://firebase.google.com/docs/cloud-messaging/migrate-v1?hl=es-419#example_targeting_specific_devices
            /*
            {
                "message": {
                    "token": "FCM_TOKEN",
                    "notification": {
                        "body": "Body of Your Notification in data",
                        "title": "Title of Your Notification in data",
                        "key_1": "Value for key_1",
                        "key_2": "Value for key_2"
                    }
                }
            }
            */
            
    // el access token correcto se ha obtenido basado en este link: https://stackoverflow.com/questions/74055331/firebase-cloud-messaging-api-v1-expected-oauth-2-access-token
    // Obtener Access token en: https://developers.google.com/oauthplayground/
    $headers=array(
        'Authorization: Bearer ya29.a0AfB_byAiyKZwag8S2xanFp7p7OqgJQicoPI0MFqLnEi5l4nsLo3r3hOi6ydyODonVGV3USCFvwnab82UBLFFEoy_JW30ifwbP8PVvJv3nJsApTmF5uMpHoeNkRVavMHh02S1nfjbCttZZBrlWpFskJCi8w2ADK3qdRnXaCgYKASUSARESFQGOcNnCmVw6ohlRCJ5nQFLq6TdQrw0171',
        'Content-Type: application/json'
    );

    $ch=curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch,CURLOPT_POST,true);
    curl_setopt($ch,CURLOPT_HTTPHEADER,$headers);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
    curl_setopt($ch,CURLOPT_POSTFIELDS,json_encode($fields));
    $result=curl_exec($ch);
    print_r($result);
    curl_close($ch);

?>

</body>
</html>
<?php
include "includes/modal-index.html";
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notificaciones</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" integrity="sha512-b2QcS5SsA8tZodcDtGRELiGv5SaKSk1vDHDaQRda0htPYWZ6046lr3kJ5bAAQdpV2mmA/4v0wQF9MyU6/pDIAg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.min.js" integrity="sha512-WW8/jxkELe2CAiE4LvQfwm1rajOS8PHasCCx+knHG0gBHt8EXxS6T6tJRTGuDQVnluuAvMxWF4j8SNFDKceLFg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="js/script.js"></script>
    <!-- <script src="js/jquery.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.js" integrity="sha512-+k1pnlgt4F1H8L7t3z95o3/KO+o78INEcXTbnoJQ/F2VqDVhWoaiVml/OEHv9HsVgxUaVW+IbiZPUJQfF/YxZw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>
  <script type="module">

  // Import the functions you need from the SDKs you need

  import { initializeApp } from "https://www.gstatic.com/firebasejs/10.5.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.5.0/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries
  // Add Firebase Cloud Messaging product to use
  import { getAuth } from 'https://www.gstatic.com/firebasejs/10.5.0/firebase-auth.js';
  import { getMessaging, getToken, onMessage  } from "https://www.gstatic.com/firebasejs/10.5.0/firebase-messaging.js";
  
  // Your web app's Firebase configuration
  const firebaseConfig = {
    apiKey: "AIzaSyDqFkEN-b9C7YT2Kyl2F7UFMVyP0OQZlfE",
    authDomain: "notificaciones-14b4b.firebaseapp.com",
    projectId: "notificaciones-14b4b",
    storageBucket: "notificaciones-14b4b.appspot.com",
    messagingSenderId: "372314788759",
    appId: "1:372314788759:web:afa02dabf215bedb152ad2",
    measurementId: "G-1SLBHMG55V"
  };
    
  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  console.log(app.name); // DEFAULT

  //check if browser supports service worker
  if('serviceWorker' in navigator){
    // registers the service worker file with the filename
    navigator.serviceWorker.register('js/firebase-messaging-sw.js')
    .then(
    (registration) => {
      console.log("Service worker registration succeeded:", registration);
      // Initialize Firebase Cloud Messaging and get a reference to the service
      const messaging = getMessaging(app);
      console.log(messaging);

      //request permission for Push Message.
      console.log('Requesting permission...');
      Notification.requestPermission().then((permission) => {
        // si permiten notificaciones
        if (permission === 'granted') {
          console.log('Notification permission granted.');
          // In many cases once an app has been granted notification permission,
          // it should update its UI reflecting this.
          //const notification = new Notification("Hi there!");   <------------ TEST
          //resetUI();

          // Obtener token
          getToken(messaging, {vapidKey: "BG5b9SAs8kAFjW9WsSgiKFg6qvV5NfACmohcZs1VomYFQUEh-VdIWgoMR4vG32rC83FVqxjlJsqgOzPG3qZPZ24"}).then((currentToken) => {
            if (currentToken) {
              // Send the token to your server and update the UI if necessary
              // ...
              saveToken(currentToken);
              console.log(currentToken);
              document.getElementById("mostrar-token").innerHTML = 'Token: ' + currentToken;
              //setTokenSentToServer(true);
            } else {
              // Show permission request UI
              console.log('No registration token available. Request permission to generate one.');
              // ...
              //setTokenSentToServer(false);
            }
          }).catch((err) => {
            console.log('An error occurred while retrieving token. ', err);
            // ...
            //setTokenSentToServer(false);
          });

        // no permitir notificaciones
        } else {
        console.log('Unable to get permission to notify.');
      }
    });

    
    },
    (error) => {
      console.error(`Service worker registration failed: ${error}`);
    }
  );
  
} else {
  console.error("Service workers are not supported.");
}

function saveToken(currentToken) {
	$.ajax({
		url: 'action.php', method: 'post', data: 'token=' + currentToken
  }).done(function(result){
	  console.log("aqui llego ok");
    toast(0, "Token Almacenado: ", "Se ha Guardado el Token en la Base de Datos.");
  })
}

/*
deleteToken(messaging).then(() => {
  console.log('Token deleted.');
  // ...
}).catch((err) => {
  console.log('Unable to delete token. ', err);
});
*/

</script>
<p id="mostrar-token">Token: </p>
</body>
</html>
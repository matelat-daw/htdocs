// Give the service worker access to Firebase Messaging.
// Note that you can only use Firebase Messaging here. Other Firebase libraries
// are not available in the service worker.
importScripts("https://www.gstatic.com/firebasejs/10.0.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.0.0/firebase-messaging-compat.js");
  // Initialize the Firebase app in the service worker by passing in
  // your app's Firebase config object.
  // https://firebase.google.com/docs/web/setup#config-object
  
  //CHANGE HERE
  firebase.initializeApp({
	apiKey: "AIzaSyDqFkEN-b9C7YT2Kyl2F7UFMVyP0OQZlfE",
    authDomain: "notificaciones-14b4b.firebaseapp.com",
    projectId: "notificaciones-14b4b",
    storageBucket: "notificaciones-14b4b.appspot.com",
    messagingSenderId: "372314788759",
    appId: "1:372314788759:web:afa02dabf215bedb152ad2",
    measurementId: "G-1SLBHMG55V"
  });
  // Retrieve an instance of Firebase Messaging so that it can handle background
  // messages.
  const messaging = firebase.messaging();
  
  // If you would like to customize notifications that are received in the
  // background (Web app is closed or not in browser focus) then you should
  // implement this optional method.
  // Keep in mind that FCM will still show notification messages automatically
  // and you should use data messages for custom notifications.
  // For more info see:
  // https://firebase.google.com/docs/cloud-messaging/concept-options

  /* ESTE BLOQUE FUNCIONA, ES SUSTITUIDO PARA EL FUNCIONAMIENTO DE SEND.PHP DE ENVIO DE NOTIFICACIONES PUSH DESDE PHP*/

  messaging.onBackgroundMessage(function (payload) {
    console.log("[firebase-messaging-sw.js] Received background message ", payload);
    // Customize notification here
  const notificationTitle = 'Atención Por Favor';
  const notificationOptions = {
    body: 'Tienes una Nueva Notificación.',
    icon: '/firebase-logo.png'
  };

  self.registration.showNotification(notificationTitle, notificationOptions);
  });
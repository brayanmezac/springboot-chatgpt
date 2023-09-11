# GPT Spring boot 🤖

---

La aplicación es una implementación basada en **Spring Boot** y **Maven** que proporciona funcionalidades de chat mediante la integración con la API de ChatGPT. Los usuarios pueden interactuar en tiempo real con el modelo de lenguaje, obteniendo respuestas dinámicas según las preguntas o comentarios que ingresen. Para experimentar la aplicación en acción, visita este [enlace](https://springboot-nlaq.onrender.com/chatboot/chat?message=hola).

---


Para poner en marcha la aplicación, sigue los pasos a continuación:

1. **Ejecuta el programa**: Utiliza el siguiente comando en la terminal:

    ```sh
    mvn spring-boot:run
    ```

2. **Accede a la aplicación**: Una vez que la aplicación esté en ejecución, abre tu navegador y visita el siguiente enlace:

    ```
    localhost:8080/chatboot/chat?message=hola
    ```

---
Este controlador de Spring Boot expone dos puntos finales API:

1. **/chatboot/chat**: Este punto final acepta una solicitud GET y requiere un parámetro de consulta `message`. Cuando se llama a este punto final, el método `chatWith()` se ejecuta y envía el mensaje proporcionado al servicio `ChatgptService` para obtener una respuesta. La respuesta del servicio se devuelve como una cadena.

   >Para usar este punto final, puedes hacer una solicitud GET a la siguiente URL (reemplaza `tu_mensaje` con el mensaje que quieras enviar):



2. **/chatboot/prompt**: Este punto final también acepta una solicitud GET y requiere un parámetro de consulta `message`. Cuando se llama a este punto final, el método `prompt()` se ejecuta. Este método crea una nueva solicitud de chat con el mensaje proporcionado y algunos valores predeterminados para `maxTokens`, `model`, `temperature` y `topP`. Luego, envía esta solicitud al servicio `ChatgptService` para obtener una respuesta. La respuesta del servicio se devuelve como un objeto `ChatResponse`.

    >Para usar este punto final, puedes hacer una solicitud GET a la siguiente URL (reemplaza `tu_mensaje` con el mensaje que quieras enviar):

---

Para agregar una variable de entorno en tu sistema, puedes seguir estos pasos:

1. **En sistemas basados en Linux o MacOS**:
   - Abre tu terminal.
   - Abre el archivo `~/.bashrc` o `~/.bash_profile` con un editor de texto. Por ejemplo, puedes usar `nano ~/.bashrc`.
   - Agrega la siguiente línea al final del archivo: `export GPT_KEY=tu_llave_de_openai`. Asegúrate de reemplazar `tu_llave_de_openai` con tu clave real de OpenAI.
   - Guarda y cierra el archivo.
   - Ejecuta `source ~/.bashrc` o `source ~/.bash_profile` para aplicar los cambios.

2. **En sistemas basados en Windows**:
   - Abre el menú Inicio y busca 'Variables de entorno'.
   - Haz clic en 'Editar las variables de entorno del sistema'.
   - En la pestaña 'Avanzado', haz clic en 'Variables de entorno'.
   - En 'Variables del sistema', haz clic en 'Nueva'.
   - Ingresa `GPT_KEY` como el nombre de la variable y tu clave de OpenAI como el valor.
   - Haz clic en 'Aceptar' en todas las ventanas para aplicar los cambios.

Para obtener una clave de OpenAI, necesitarás crear una cuenta en el sitio web de OpenAI. Una vez que hayas creado una cuenta y hayas iniciado sesión, puedes generar una nueva clave API. Por favor, ten en cuenta que el uso de la API de OpenAI puede estar sujeto a costos y debes revisar los detalles y la documentación proporcionada por OpenAI.

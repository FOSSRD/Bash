# Bash
Bash es un intérprete de comandos y un lenguaje de programación de shell utilizado en sistemas Unix y Linux. Proporciona una interfaz de línea de comandos que permite a los usuarios interactuar con el sistema operativo, ejecutar comandos, automatizar tareas y escribir scripts para realizar una variedad de acciones en un entorno de línea de comandos. El nombre "Bash" es una abreviatura de "Bourne-Again Shell", haciendo referencia a su relación con el shell Bourne original desarrollado por Stephen Bourne. Bash es uno de los shells más populares y ampliamente utilizados en sistemas Unix y Linux.

## .bashrc

El archivo .bashrc es un archivo de configuración utilizado en sistemas Unix y Linux para personalizar el comportamiento del shell Bash. Puede incluir diversas configuraciones y definiciones de alias para hacer que tu experiencia en la línea de comandos sea más eficiente y personalizada.

Como requisitos para esta configuracion se necesita lo siguiente:

FZF: FZF (Fuzzy Finder) es una herramienta de línea de comandos que te permite buscar y seleccionar archivos o elementos de una lista de manera rápida y sencilla mediante una coincidencia difusa. Puedes configurar FZF en tu .bashrc para que sea parte de tu flujo de trabajo.

Bash Completion: El soporte de autocompletado en Bash es una característica útil que te permite presionar la tecla Tab para autocompletar comandos, nombres de archivos y más. Asegúrate de que esta característica esté habilitada y configurada en tu .bashrc para mejorar tu eficiencia en la línea de comandos.

Notify-send: notify-send es una utilidad en sistemas Linux que te permite enviar notificaciones al sistema de notificación (como la bandeja de sistema en entornos de escritorio como GNOME o KDE). Puedes usarlo para mostrar notificaciones personalizadas en respuesta a eventos específicos o comandos.

Pandoc: Pandoc es una herramienta de conversión de documentos que te permite convertir entre diferentes formatos de archivo, como Markdown, HTML, PDF, DOCX, y muchos más. Puedes usarlo en scripts o comandos dentro de tu .bashrc para automatizar tareas de conversión de documentos.

Para configurar estas herramientas en tu archivo .bashrc, puedes agregar las variables de entorno necesarias, definir alias para comandos comunes y ajustar las configuraciones según tus necesidades específicas. Asegúrate de consultar la documentación de cada herramienta para obtener información detallada sobre cómo integrarlas en tu entorno de Bash.

En este archivo en especifico tenemos algunas de esas configuraciones que puedes revisar al abrir los arvhivos. 

## Instalacion

1- Copiamos el archivo .bashrc a la carpeta "/home/tu-usuario/.config" donde "tu-usuario" lo reemplazas por el usuario que creaste.
2- Creamos en la carpeta ".config" mencionada anteriormente la carpeta "bashrc"
3- Copiamos los archivos "alias", "export", "function" y "prompts" a la carpeta "bashrc"


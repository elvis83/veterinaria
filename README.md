# PROYECTO - ENTREGA N° 6

>Estimado participante, proceda a elaborar el modulo de seguridad de su proyecto.
Considerar:

* Mantenimiento de Grupos de usuarios
* Mantenimiento de Usuarios. Donde debe permitir al administrador reniciar clave,
  donde la clave se genere de manera aleatoria.
* Control de acceso.
* Recuperar contraseña (Enviar clave por correo).
* Cambiar contraseña para el usuario.

# Configuración
> configuración global `.env`

### Base de datos
```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=_veterinaria
DB_USERNAME=root
DB_PASSWORD=developer@94`
```

### Envio de Correo

```
MAIL_DRIVER=smtp
MAIL_HOST=smtp-mail.outlook.com
MAIL_PORT=587
MAIL_USERNAME=null
MAIL_PASSWORD=
MAIL_ENCRYPTION=ssl
MAIL_FROM_ADDRESS=null
MAIL_FROM_NAME=Test
```

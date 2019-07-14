# APUNTES DE FLUTTER

El archivo principal de una aplicación en flutter es el archivo *main.dart* ubicado en la carpeta *libs* del proyecto.

La primera declaración que se hará es importar el paquete ***package:flutter/material.dart***, que es el que nos permitirá trabajar con las librerias de flutter.

La función ***main*** dentro de este archivo dart será la que se ejecutará cuando se ejecute una aplicación de Flutter y esta a su vez ejecutará la función ***runApp*** 

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(app);
}
```

Esta función ***runApp*** recibe como parámetro un **Widget** que será nuestra aplicación.

## Widgets

> En **flutter** todo es un widget

Los **Widgets** son los componentes principales de una aplicación y en *Flutter* no es la excepción.

#### Widgets Básicos

Los **Widgets** básicos son el punto de partida al momento de crear *Widgets Personalizados* en **Flutter**. Estos son:

+ **Text:** Representa un texto o cadena de caracteres.

  ```dart
  Text(
    'Hello, $_name! How are you?',
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(fontWeight: FontWeight.bold),
  )
  ```

+ **Row:** Permite organizar o posicionar otros *widgets* hijos en forma de filas o renglones.

+ **Column:** Permite organizar o posicionar otros *widgets* hijos en forma de columnas.

+ **Stack:** Permite apilar *widgets* hijos con respecto al eje Z (elevación) en la interfaz.

+ **Container:** es uno de los *widgets* más versátiles de Flutter y permite organizar otros *widgets* como si fuera una caja o contenedor. Este *widget* es equivalente a los **divs** de *html* y admiten atributos similares de apariencia.

### Tipos de Widgets

#### StatefulWidgets

Son todos los *widgets* con los que el usuario de la aplicación puede tener una interacción directa. Por ejemplo: *Checkbox, Radio, Slider, Form*. Este tipo de *widgets* por lo general disparan algún evento, acción o comportamiento determinado como respuesta a la interacción con el usuario.

Los **StatefulWidgets** constan de 2 partes, que son el **Widget** como tal y el **estado** del widget.

#### StatelessWidgets

Los *widgets* de este tipo no reaccionan ante el intento de interacción con el usuario. No tienen asociado una acción o comportamiento particular. Son estáticos en la interfaz. Por ejemplo: *Icono, Texto, Contendor con color*, entre otros.

Ambos tipos de *Widgets* heredan las características y comportamiento de una clase principal llamada ***Widget***.

[Documentación](<https://api.flutter.dev/flutter/widgets/widgets-library.html>)

## Layout

Analizar las interfaces de usuario para determinar la mejor forma de componer los diferentes grupos de elementos visuales o de interacción que conforman nuestra aplicación es una tarea común entre desarrolladores de aplicaciones móviles. De hecho la propia documentación oficial de **Flutter** lo recomienda.

El análisis consiste básicamente en identificar o detectar visualmente cuál sería la mejor forma de construir las diferentes secciones de nuestra interfaz, tomando en cuenta los *widgets* básicos de los cuales disponemos en **Flutter**. Prever la manera en que pueden ser anidados u organizados los diferentes *widgets* básicos, incluso determinar qué grupos de *widgets* pudieran pasar a ser nuevos *widgets compuestos* nos facilitará mucho el trabajo posterior ya cuando pasemos al código del programa.

Una técnica usada para representar el *widget tree* resultante del análisis de la interfaz es mediante un diagrama de árbol, en el que cada *widget* se representa con una símbolo circular en una estructura de dependencias o asociaciones derivadas desplegadas en forma de árbol descendente.
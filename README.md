# nnodesTestRoR

Tarea Ruby on Rails

  - Desarrollar una aplicación en Ruby on Rails en su última versión (4.2.x).
- Se utilizó Rails 4.2.5.1
  - Se recomienda usar Linux, pero puede ser en Windows también.
- Se utilizó Windows
  - La aplicación debe ser un CRUD de autos, los cuales tienen 4 atributos. Marca,
modelo, latitud y longitud.
- La aplicación permite desde la vista principal poder eliminar, modificar y ver el detalle de cada uno de los carros allí listados. Además de tener la opción para crear un carro nuevo.
  - La latitud y longitud debe generarse automáticamente la primera vez que se
crea el auto, con números aleatorios, pero dentro de las coordenadas que
engloban el planeta Tierra (no importa si no cae en tierra).
- Al momento de crear un carro, solo permite introducir Modelo y Marca del mismo, los atributos de latitud y longitud son generados aleatoriamente en un rango de (-85,85) y (-180,180) respectivamente. Estos últimos campos pueden ser actualizados en cualquier momento validando desde la aplicación la misma condición de rangos.
  - Un auto puede tener varias piezas. Las piezas tienen 2 atributos. Nombre y
cantidad.
- Dentro de la vista de un auto se le permite al usuario crear varias piezas asociadas a ese auto.
  - La aplicación, por lo tanto, debe permitir un CRUD de piezas asociadas a un
auto específico.
- Dentro de la vista de un auto se le permite al usuario además de crear piezas, poder editar y eliminar piezas en el listado de las piezas asociadas a ese auto.
  - La vista específica de un auto debe permitir visualizar su ubicación en alguna
API de mapas.
- Se usa el api de Google Maps para mostrar la ubicación del auto usando la longitud y latitud del mismo.
  - La URL principal de la aplicación debe ser el listado de autos existentes.
auto específico.
- Se muestra el listado de carros en la dirección principal del proyecto.
  - Cualquier otra funcionalidad no mencionada se considera en la evaluación, pero
no es obligatoria.
- Pendiente por agregar nuevas funcionalidades en el tiempo extra que queda.
  - El diseño no se evaluará.
- Se utilizó Bootstrap 3 para un diseño sencillo y adaptativo dentro de la aplicación.
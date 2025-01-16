---
title: "Modelo de Madurez de Ingeniería de Plataforma"
pdf: https://github.com/cncf/tag-app-delivery/raw/main/platforms-maturity-model/v1/assets/platform-eng-maturity-model-v1.0.pdf
version_info: https://github.com/cncf/tag-app-delivery/tree/main/platforms-maturity-model/README.md
description: "Este modelo de madurez tiene la intención de brindar una guía táctica a usuarios que buscan adoptar los patrones que se discuten en el artículo Platforms Definition. Dicho artículo sugiere por qué y qué construir mientras que en este documento se comenzará a describir cómo planificar su construcción. La audiencia objetivo son CTOs, Directores de ingeniería, líderes de ingeniería, y arquitectos que buscan evaluar su situación y entorno actual e identificar oportunidades de mejora.<br/><br/>
Este documento refiere, amplía y sigue estándares similares a los siguientes documentos relacionados:<br/>
[Cloud Maturity Model](https://maturitymodel.cncf.io/)<br/>
[Platforms Definition White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/)"
type: whitepapers
url: whitepapers/platform-eng-maturity-model
---


<script>
window.onhashchange = function() {
  // get the fragment without the `#`
  const fragment = window.location.hash.substring(1)
  const found = Array.from(document.querySelectorAll('.nav-item'))
    .filter(el => el.textContent === decodeURI(fragment))
  if (!found) {
    return
  }

  if (found.length > 1) {
    console.warn(`Found multiple ` + "`.nav-item`s" + ` with the text ${parts[1]}, only opening the first one`)
  }

  found[0].click();
}
</script>

## Introducción

El [Platforms White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/) inicial de la CNCF describe qué son las plataformas internas para computación en la nube y los valores que prometen entregar a las empresas. Pero para alcanzar esos valores, una organización debe reflejar y perseguir deliberadamente resultados y prácticas que tienen impacto en ellas, teniendo presente que toda organización depende de una plataforma interna elaborada para sí misma, aún si esa plataforma no fuera más que documentación sobre cómo utilizar servicios de terceras partes. Este modelo de madurez provee un marco de trabajo para esa reflexión y para identificar oportunidades de mejora en cualquier organización.

## ¿Qué es la Ingeniería de Plataforma?

Inspirados en la promesa de cooperación interdisciplinaria de DevOps, las Plataformas y la Ingeniería de Plataforma, han emergido en las empresas como una forma implícita de cooperación. Las plataformas organizan y presentan capacidades comunes, marcos y experiencias. En el contexto de este grupo de trabajo y publicaciones relacionadas, el foco está puesto en plataformas que facilitan y aceleran el trabajo de [usuarios internos]({{< ref "/wgs/platforms/glossary#platform-users" >}}) tales como equipos de producto y aplicaciones.

[**Ingeniería de Plataforma**]({{< ref "/wgs/platforms/glossary#platform-engineering" >}}) es la práctica de planificar y proveer esas plataformas de cómputo a desarrolladores y usuarios y abarca a todas las partes de las plataformas y sus capacidades: personas, procesos, políticas y tecnologías; como así también los resultados de negocio deseados que los impulsan.

Por favor, lea primero el [CNCF Platforms White Paper](https://tag-app-delivery.cncf.io/whitepapers/platforms/) para un contexto más completo.

## Cómo usar este modelo

A medida que la Ingeniería de Plataforma ha ido ganando importancia durante los últimos años, algunos patrones se han vuelto evidentes. Al organizar estos patrones y observaciones en un modelo de madurez progresivo, intentamos orientar a los [equipos de plataforma]({{< ref "/wgs/platforms/glossary#platform-team" >}}) hacia los desafíos que pueden presentarse y las oportunidades que deben perseguir. Cada aspecto se describe en base a una continuidad de características de diferentes equipos y organizaciones en cada nivel, dentro de ese aspecto. Esperamos que los lectores se reconozcan a sí mismos dentro del modelo e identifiquen oportunidades en los niveles adyacentes.

Como nota, cada nivel adicional de madurez, va acompañado de mayores requerimientos presupuestarios y dedicación de tiempo de las personas. Por lo tanto, alcanzar el nivel más alto no debería ser una meta en sí misma. Cada nivel describe cualidades que deberían aparecer en esa etapa. Los lectores deben considerar si su organización y contexto actual se beneficiarían de esas cualidades, en base a la inversión requerida.

Mantener presente que cada aspecto está pensado para ser evaluado y evolucionado de manera independiente. Sin embargo, como en cualquier sistema técnico social, estas características son complejas e interrelacionadas. Por ello, podría ocurrir que para mejorar en un aspecto determinado, también se debe alcanzar un nivel mínimo en otro aspecto.

También es importante reconocer que las implementaciones de plataformas varían de una organización a otra. Asegúrese de evaluar el estado actual integral de la transformación cloud native de _su_ grupo. Un recurso fenomenal de apoyo para esta evaluación es el [Cloud Native Maturity Model](https://maturitymodel.cncf.io/).

Por último, este modelo alienta a que las organizaciones maduren su disciplina de Ingeniería de Plataforma y sus plataformas resultantes mediante una planificiación intencional. Tal planificación y disciplina son requerimientos en sí mismos para el desarrollo de plataformas maduras y su evolución continua.

En general, tener presente que al mapear su organización dentro de un modelo, captura el estado actual _para permitir_ la iteración y mejora progresiva. [Martin Fowler](https://martinfowler.com/bliki/MaturityModel.html) bien lo dice: "El verdadero resultado de una evaluación de modelo de madurez no es en que nivel uno se encuentra, sino la lista de cosas en las que se debe trabajar para mejorar. Su nivel actual es tan solo un estadío intermedio de trabajo para poder determinar esa lista de conocimientos que se deben adquirir a continuación." En ese sentido, procure ubicarse dentro del modelo y luego identifique oportunidades en los niveles adyacentes.

## El contexto detrás de este trabajo

Es valioso entender el contexto en el cual se ha escrito un documento. Las siguientes secciones establecen un contexto detrás del modelo, así como algunas expectativas para usted, el lector.

### Audiencia objetivo

Cada lector trae un contexto único y tomará aprendizajes únicos de este modelo. A continuación se describen algunos roles que tenemos en mente, así como sus posibles motivaciones para relacionarse con el modelo:

* **CTOs, VPs, y Directores de Tecnología**: Líderes que buscan trazar un camino hacia la transformación digital y una mayor productividad en el desarrollo
* **Gerentes de Ingeniería**: Grupos e individuos que buscan empoderar a sus ingenieros, para que provean valor con menor sobrecarga y mayor eficiencia
* **Arquitectos empresariales**: Individuos que navegan por el escenario tecnológico moderno, en busca de una perspectiva de valor orientada a dar soluciones a problemas tecnológicos
* **Ingenieros de Plataforma y Gerentes de Producto de Plataforma**: Equipos y personas que buscan construir la mejor experiencia posible para quienes construyen y utilizan las plataformas
* **Fabricantes de productos y quienes mantienen proyectos**: Organizaciones e ingenieros que desean diseñar herramientas y dar mensajes que permitan que los usuarios tengan éxito con las plataformas y sus capacidades
* **Desarrolladores de aplicaciones y productos**: Usuarios de plataforma que buscan comprender con mayor detalle qué podrían esperar de una plataforma interna

### Comprendiendo los niveles

Este modelo no está concebido para clasificar en forma determinante a una organización o plataforma con un “Nivel 1” o “Nivel 4.” Cada aspecto debe considerarse de manera independiente de las otras; las características de cada nivel representan una continuidad dentro de ese aspecto, pero no están necesariamente acopladas a otros aspectos del mismo nivel. Más aún, muchas organizaciones verán características de más de un nivel, que aplicarán a sus equipos y trabajos. Esto se debe a que ningún nivel es inherentemente bueno o malo, sino solo contextual a los objetivos del equipo.

Las etiquetas de cada nivel pretenden reflejar el impacto de la Ingeniería de Plataforma en su organización. A medida que recozca a su organización en un nivel determinado, obtendrá una visión de las oportunidades que siguen en los siguientes niveles. Los niveles más bajos comprenden soluciones más tácticas, mientras que los más altos son más estratégicas.

Esto genera un potencial proceso para el desarrollo y madurez de las plataformas, similar al desarrollo de otro producto digital: primero, reconocer un problema y la necesidad de una nueva solución, luego desarrollar productos mínimamente viables como soluciones hipotéticas, en tercer lugar iterar para mejorar la solución y asegurar que satisface a los clientes y finalmente escalar y optimizar el producto para resolver el problema para muchos equipos y usuarios.

De forma similar al [CNCF Cloud Native Maturity Model](https://maturitymodel.cncf.io/), este modelo resalta que solo se pueden lograr resultados de negocio exitosos mediante el balance entre personas, procesos y políticas en conjunto con la tecnología. Notablemente, este modelo introduce aspectos que con frecuencia no competen a un único equipo sino que requiere de la cooperación entre varias áreas de ingeniería y, con bastante frecuencia, de toda la organización.

### Pero no parece encajar

¡Eso está perfecto! Todas las organizaciones y grupos tienen dinámicas y parámetros específicos.

Hay que tener presente que el objetivo de este paper no es el de prescribir una fórmula rígida, sino dar un marco de trabajo que pueda aplicar a sus  circunstancias. Puede que no todas las palabras le sean relevantes, pero esperamos que el contenido lo inspire a una introspección sobre el trayecto de su propia plataforma, tomando lo que le haga sentido y dejando de lado el resto.

El objetivo de este modelo es proveer una herramienta que provea una guía a los practicantes de Ingeniería de Plataforma, accionistas y otros sujetos interesados en sus recorridos. El diseño e implementación de plataformas no es una ciencia exacta sino que depende de las necesidades de un proyecto individual, una organizacion y un tiempo y lugar particular.


## Tabla del modelo

| <div style="width:120px">Aspect </div> |                                                                                            | Provisional            | Operativo           | Escalable               | Optimizable                   |
|:---------------------------------------|:-------------------------------------------------------------------------------------------|:-----------------------|:----------------------|:-----------------------|:-----------------------------|
| [Inversión](#Investment)     | _¿Cómo se asigna personal y presupuesto a las capacidades de la plataforma?_                              | Voluntario o transitorio | Equipo dedicado        | Como producto             | Ecosistema facultado            |
| [Adopción](#Adoption)         | _¿Por qué y cómo los usuarios descubren y usan las plataformas internas y sus capacidades?_      | Erratica                | Empuje extrínseco        | Tracción intrínseca         | Participatoria                |
| [Interfaces](#Interfaces)     | _¿Cómo interactúan los usuarios con la platforma y cómo consumen sus capacidades?_                            | Procesos peronalizados       | Herramientas estándar      | Soluciones de autoservicio | Servicios integrados          |
| [Operaciones](#Operations)     | _¿Cómo se planifican, priorizan, desarrollan y mantienen las plataformas y sus capacidades?_ | A demanda             | Resgistro central     | Habilitación central      | Servicios gestionados             |
| [Medición](#Measurement)   | _¿Cómo es el proceso para obtener e incorporar retroalimentación y aprendizaje?_               | Ad hoc                 | Recopilación consistente | Ideas               | Cuantitativo y cualitativo |

## Detalle del modelo

<div style="min-width:620px">
{{< tabs tabTotal="6">}}
{{< tab tabName="Inversión" >}}

<h4 style="color:gray;padding-bottom:10px;padding-top:20px"><i>¿Cómo se asigna personal y presupuesto a las capacidades de la plataforma?</i></h4>

La inversión en plataformas e Ingeniería de Plataforma es el proceso de asignar presupuesto y personal para construir y mantener capacidades comunes. Es común que las iniciativas se describan como construídas orgánicamente de abajo hacia arriba o impulsadas como iniciativas de arriba hacia abajo. En cualquier caso, es la capacidad de invertir un esfuerzo sostenido orientado hacia un trabajo de alto impacto. Este aspecto captura cómo la escala y alcance de la inversión pueden impactar en el éxito de la plataforma.

### Nivel 1, Provisional — Voluntario o transitorio

Pueden existir capacidades individuales que provean bases comunes para funcionalidades frecuentes o críticas. Estas capacidades se construyen y mantienen según su necesidad, en lugar de planificarse y financiarse intencionalmente.

Estas capacidades se construyen y mantienen por personas asignadas de forma temporal o voluntaria; no se cuenta con un financiamiento central o con personal asignado intencionalmente a ellas. Dependen de los requerimientos tácticos de sus usuarios en un determinado momento.

#### Características:

* Se definen equipos de choque (_"Hit"_) o especializados (_"tiger"_) para abordar requerimientos urgentes. Estos equipos son efímeros y no tienen tiempo asignado ni otorgado para planificación y/o soporte a largo plazo.
* Las migraciones, mejoras o  ampliaciones se suelen considerar ítems de trabajo "deseable" y dependen de esfuerzos de "investigación" o "días de hackeo".
* Las mejoras a procesos o automatizaciones pueden introducirse durante la atención de algún requerimiento puntual, como ser un parche urgente de seguridad, sin embargo, no se cuenta con apoyo para construir las soluciones de manera reutilizable o sostenible.
* Los empleados se quejan de sobrecarga y frustración por la cantidad de trabajo que realizan por fuera de su rol principal.

#### Escenarios de ejemplo:

* Hay un empleado específico a quien se lo percibe como el experto de entornos de prueba. Si bien este empleado tiene buenas intenciones, sus intentos por habilitar mejores entornos de prueba a pesar de la inversión limitada, han llevado a incrementar el riesgo, dado que no se realiza un mantenimiento de su solución y no hay conocimiento compartido sobre cómo hacer un triage de un entorno de prueba que presenta fallas.
* Los ingenieros solo son alentados a invertir en mejoras de capacidades cuando no existe presión por parte de la gerencia en relación con funcionalidades de generación de ingresos. Esto se traduce en pocos días al final de algunos sprints, en los que ellos priorizan automatizar y mejorar partes de su pipeline de CI/CD. No es inusual que estas mejoras aparezcan en ráfagas ya que pueden pasar meses con sprints que los mantienen totalmente ocupados y que no dejan disponibilidad para estos emprendimientos.

### Nivel 2, Operativo — Equipo dedicado

Se cuenta con presupuesto y el personal asignado para dar soporte persistente a personas y recursos. El personal asignado tiene la tarea de proveer un conjunto de capacidades comunmente requeridas para acelerar la entrega de software. A menudo estos equipos se enfocan en cumplir requerimientos técnicos reactivos. Pueden llamarse DevOps, Engineering Enablement, Developer Experience (DevEx o DevX), Shared Tools, Centre-Of-Excellence, o incluso Platform. Tienen financiamiento central y son gestionados con un centro de costos, pero su impacto directo en la cadena de valor no es medido. En este nivel puede resultar dificil asociar el impacto de los equipos de plataforma sobre la organización y sus flujos de valor, lo que puede complicar la sustentabilidad continua de estos equipos.

#### Características:

* El equipo está conformado casi en su totalidad por técnicos generalistas.
* El presupuesto del equipo puede incluir costos de infraestructura asociados a su trabajo lo que puede generar que, con frecuencia, surja como un tema relevante en las conversaciones de presupuesto.
* Los ítems de backlog abarcan varias tecnologías, lo que puede generar cambios frecuentes e importantes de contexto.
* Este equipo, con frecuencia, es el primero en cubrir los huecos que aún no se han atendido, aún si no están declarados en el alcance del equipo. Este equipo toma responsabilidad sobre recursos que no tienen un responsable.
* Las personas asignadas pocas veces tienen el tiempo o la experiencia para poder investigar a los clientes y validar así sus diseños o implementaciones.

#### Escenarios de ejemplo:

* Los desarroladores de aplicaciones, levantan un problema por el tiempo que demora realizar el build de sus aplicaciones. A un equipo centralizado se le asigna la tarea de reducir el tiempo de build en un 50%. Ellos lo resuelven, duplicando el tamaño y cantidad de ejecutores de CI dado que no tienen la suficiente cercanía con el software como para mejorar individualmente los builds de las aplicaciones. Esto crea una preocupación de presupuesto en relación al equipo centralizado, debido a que la ganancia de productividad no se mide directamente contra este aumento de costo de infraestructura.

### Nivel 3, Escalable — Como producto

La inversión en plataformas internas y sus capacidades es similar a la inversión en los productos y cadena de valor que genera una empresa: en base al valor que se espera proveer a sus clientes. Se considera de manera explícita y se invierte en la gestión de producto y experiencia de usuario. Puede usarse un sistema de cobro revertido para reflejar el impacto de las plataformas en las cadenas de valor y productos de sus clientes. La empresa asigna presupuesto y personal a las iniciativas apropiadas usando indicadores de rendimiento basados en datos y círcuitos de retroalimentación. Los equipos de plataforma pueden, en definitiva, optimizar el negocio y contribuir al aumento de rentabilidad.

#### Características:

* Los equipos de plataforma están conformados por roles que no se encuentran tradicionalmente en servicios internos o equipos técnicos, por ejemplo, Gerente de Producto y Experiencia de Usuario.
* El equipo publica internamente un roadmap a la organización, que indica el valor entregado y objetivos de alto nivel a futuro.
* Las funcionalidades se prueban por calidad de implementación y experiencia de usuario durante el diseño, entrega y post inmplementación.
* La remoción de funcionalidades forma una parte clave de la conversación, el objetivo es lograr un conjunto de capacidades bien soportadas y utilizadas, en lugar de extensas funcionalidades que compliquen el mantenimiento.

#### Escenarios de ejemplo:

* Datos derivados de métricas de uso de la plataforma servirán de base para la toma de decisiones en la asignación de presupuesto y personal para las iniciativas de mayor impacto.

### Nivel 4, Optimizable — Ecosistema facultado

Los equipos de plataformas encuentran maneras de aumentar la eficiencia y efectividad para toda la organización más allá de las capacidades básicas. Los principales encargados de mantener la plataforma se esfuerzan con intención de optimizar el time-to-market para nuevos productos, reducir costos de la empresa, habilitar el gobierno y cumplimiento eficiente de nuevos servicios, escalar cargas de trabajo con rapidez y facilidad y otros requerimientos transversales. Estos encargados principales están enfocados en habilitar especialistas de capacidades para que puedan integrar sin problema sus requerimientos y ofertas en partes existientes y nuevas de las plataformas. Más aún, la organización focaliza personas y recursos de dominios de especialidad como seguridad, performance, calidad para que participen en los marcos de trabajo de las plataformas con el fin de introducir funcionalidades avanzadas que puedan habilitar a los equipos de producto a acelerar su adhesión con los objetivos de la compañía, sin depender de la acumulación de trabajo de un equipo centralizado.

#### Características:

* Se vuelve prioritario habilitar especialistas que extiendan las capacidades de la plataforma e introduzcan nuevas.
* La organización puede centralizar especialistas, permitiendo que su conocimiento y soporte prolifere a través de capacidades de la plataforma.

#### Escenarios de ejemplo:

* Marketing trabaja con los constructores de plataform para introducir un registro de usuarios consistente que permita relacionar los esfuerzos de marketing con los resultados de productos.
* Iniciativas de automatización reducen el tiempo humano para el aprovisionamiento de bases de datos en 30 minutos por instancia, ahorrando $10m/año.

{{< /tab >}}
{{< tab tabName="Adopción" >}}

<h4 style="color:gray;padding-bottom:10px;padding-top:20px"><i>¿Por qué y cómo los usuarios descubren y utilizan las plataformas internas y sus capacidades?</i></h4>

La adopción describe no solo cómo y cuánto una organización utiliza las capacidades de una plataforma sino también qué los motiva a hacerlo. En las primeras etapas, muchos usuarios pueden no notar en lo más mínimo  que están usando una plataforma, en su lugar, ven sus herramientas como un conjunto de capacidades ad hoc de varias fuentes internas. Esto puede madurar en un grupo de capacidades que se gestionan y presentan de manera consistente a los usuarios; ya sea una o más plataformas. A medida de las capacidades se vuelven más refinadas y descubribles, es común que el motivador para el uso de plataformas se aleje de motivaciones externas como mandatos o incentivos. Esto lleva a que los usuarios elijan por sí mismos usar capacidades de la plataforma y aún en casos ideales, inviertan sus propios esfuerzos en el más amplio ecosistema de la plataforma.

<figure align="center">
<img src="assets/adoption-curve.jpg" width=600px />
<br/>
<figcaption align="center" padding="50px">
<em>Diagrama que indica un patrón común de crecimiento para la adopción de plataformas. Se expone un inicio con frecuencia lento, liderado principalmente por los constructores de plataforma. Una vez que las plataformas proveen valor suficiente para los usuarios, el crecimiento pasa a estar más asociado a la  demanda de los usuarios, generando una curva de adopción más pronunciada.</em>
</figcaption>
</figure>
</br>
</br>

### Nivel 1, Provisional — Errática

La adopción de plataformas y capacidades compartidas es esporádica e inconsistente. No existe una estrategia organizacional ni guías para elegir e integrar servicios y tecnologías de apoyo. Los equipos individuales pueden apoyarse en prácticas de plataforma para mejorar sus propios procesos, pero no hay un esfuerzo coordinado o estandarización en la organización. Este nivel de adopción se caracteriza por la ausencia de un enfoque coherente y la idea de que las herramientas externas son más efectivas que aquellas provistas internamente.

#### Características:

* Herramientas, servicios y capacidades se gestionan y consumen de forma aislada por diversos equipos y departamentos de la organización.
* Se adoptan servicios gestionados por un proveedor ("cloud") y se utilizan con inconsistencia y sin prácticas ni políticas estándar, dado que es dificil encontrar y usar configuraciones internas.
* Los equipos de aplicaciones y servicios descubren herramientas y capacidades en forma anárquica, mediante rumores o conversaciones casuales, en lugar de contar con un proceso más centralizado.
* La coordinación y reutilización de componentes y capacidades sólo ocurre por los usuarios finales (equipos de aplicaciones), si es que ocurren.
* Los equipos de producto mantienen cada cual sus propios conjuntos de scripts o herramientas para desplegar sus aplicaciones.

#### Escenarios de ejemplo:

* Un servicio de banca requiere una base de datos. Un desarrollador se entera por un amigo u otro equipo que puede solicitar una cuenta en AWS y configurar allí una base de datos RDS. De parte de otro equipo, consigue un script de Terraform para aprovisionar esa base de datos. Para monitoreo, ellos utilizan CloudWatch según les parece: copian secretos manualmente desde la consola de AWS a una instancia de Hashicorp Vault antes de ejecutar el script de Terraform.

### Nivel 2, Operativo — Empuje extrínseco

La organización reconoce el valor de las plataformas compartidas y sus capacidades y procura y alienta su sustento. Directivas internas incentivan o incluso requieren el uso de servicios compartidos de plataformas para algunos casos de uso. Algunos equipos de producto usan las capacidades de plataforma más que otros; las capacidades cubren casos de uso típicos en la organización pero no casos inusuales; y resulta dificil agregar estos casos inusuales a la plataforma común.

El descubrimiento de los usuarios sobre las capacidades y cómo utilizarlas es inconsistente; puede ocurrir que un usuario de un equipo de producto no descubra una capacidad soportada a menos que un equipo de la plataforma se la indique.

#### Características:

* Algún grado de ímpetu externo lleva a utilizar las capacidades de plataforma, por ejemplo:
  * Incentivos, como ser revisiones personales
  * Órdenes, como ser requerir su uso para los releases en producción o recibir financiación
* La utilización de las capacidades de plataforma es fragmentada: los usuarios pueden aprovechar las ventajas de una capacidad, pero podrían no tener conocimiento o interés para adoptar otras capacidades disponibles.
* Los usuarios tienen poca motivación para aprender cómo usar las capacidades de la plataforma y dependen mucho de la colaboración de los proveedores por medio de foros de colaboración o mesa de ayuda.
* Se alienta a los usuarios de plataforma a que se unan a comunidades informales de práctica para compartir problemas y soluciones, pero la asistencia es limitada.

#### Escenarios de ejemplo:

* Una organización de ingeniería elige una herramienta estándar de despliegue e instruye a todos los equipos a usarla. Se construyen nuevos procesos  (comunicación de notas de release, etc) sobre ese estándar. Los equipos son instruídos para dejar de utilizar otros tipos de scripts de despliegue y usar en su lugar la herramienta común. Esto resulta difícil para algunos equipos cuyas necesidades no quedan cubiertas por el nuevo proceso pero no saben cómo o no tienen permitido extenderlo.

### Nivel 3, Escalable — Tracción intrínseca

Los usuarios de equipos de producto y servicios elijen usar plataformas y sus capacidades por el claro valor que proveen en la reducción de carga cognitiva sobre los equipos de producto a la vez que proveen servicios de soporte de mayor calidad. La documentación e interfaces engonómicas permiten a los usuarios del equipo rapidez en el aprovisionamiento y uso de las capacidades de la plataforma. Los usuarios elijen implementaciones internas de plataformas por sobre otras alternativas, como ser desarrollar por ellos mismos las capacidades o contratar un proveedor.

#### Características:

* La adopción de plataforma es autosuficiente: el primer motivador para la adopción no es un factor externo o iniciativa que ordene a los usuarios a usar las capacidades ofrecidas por la plataforma, sino el propio valor que éstas ofrecen.
* Luego de usar y apreciar una o varias de las capacidades de la plataforma, los usuarios buscan otras y encuentran que la experiencia es similar entre todas las capacidades. Existe una expectativa de que una capacidad individual no sea algo aislado sino una funcionalidad entre un amplio conjunto de funcionalidades.
* Los equipos de plataforma alientan la adopción natural de las mismas obteniendo retroalimentación de los usuarios, compartiendo roadmaps y manteniendo foros abiertos para conversar con los usuarios.
* Los equipos de aplicación y producto valoran las capacidades de la plataforma lo suficiente como para pagar por ellas, por ej. mediante un sistema de reembolso.
* Los usuarios pueden compartir opiniones y aprender sobre próximas funcionalidades mediante foros abiertos y roadmaps compartidos.
* Portales de autoservicio, plantillas con _"golden-path"_ y otros documentos habilitan su rápido uso.

#### Escenarios de ejemplo:

* Un equipo de aplicaciones tuvo éxito en el pasado solicitando una nueva base de datos. El proceso fue sencillo de entender y casi no tuvo tiempo de espera. Además, se incluían capacidades clave como respaldos y monitoreo, que permitieron al equipo progresar en su uso durante todo el camino hacia producción sin problemas. Esta experiencia implicó que posteriormente, cuado el equipo necesitó una cola, su primer instinto fue chequear si había una opción disponible en la plataforma interna. Si bien la intención original era usar una tecnología específica de cola, al final elijieron utilizar la que se ofrecía internamente dado que conocían lo bien integrada que estaría la solución para su organización.

### Nivel 4, Optimizable — Participativa

Los usuarios de equipos de producto promueven la inversión en capacidades de plataforma uniéndose al ecosistema y contribuyendo con él. Algunas contibuciones mejoran y reparan capacidades existentes; otras introducen nuevas capacidades y funcionalidades para atender nuevos casos de uso. Se definen procesos y servicios que habilitan a los usuarios a identificar requerimientos y coordinar contribuciones entre varios equipos de producto y plataforma. Se publican nuevas capacidades por medio de interfaces y portales consistentes, con documentación completa y versionado estándar.

#### Características:

* Los usuarios de equipos de app/servicios son empoderados para contribuir con soluciones, funcionalidades y retroalimentación para las capacidades de plataforma.
* Los proyectos externos y estándar son apalancados estratégicamente para reducir los costos de mantenimiento, acelerar la entrega de nuevas funcionalidades y aprovechar los empleados de la organización con mayor efectividad.
* Se coordinan asincrónicamente nuevas capacidades y mejoras mediante tableros de temas y tracción de requerimientos. Los documentos y listas de chequeo habilitan el desarrollo auto motivado de contribuidores.
* Desarrolladores promotores y embajadores internos construyen y soportan una comunidad de usuarios interna que extiende la participación también a equipos de aplicaciones y servicios.
* El uso de capacidades de la platforma es visto como la mejor forma de trabajar en la organización, tanto por el liderazgo como por los contribuidores individuales.
* Los ingenieros de plataforma participan en la planificación de los equipos de producto para aprender sobre los requerimientos y sugerir capacidades existentes en la plataforma.

#### Escenarios de ejemplo:

* Un equipo quiere un plan de backup alternativo. Luego de proponer esto como una oferta general, se declara de baja prioridad debido a su mínima reutilización. El equipo que hizo la propuesta elije integrar su solución al marco de la plataforma y hacerlo disponible para la organización. Originalmente es una oferta alfa pero una vez que cumpla con todos los requisitos operativos puede promoverse como capacidad central de la plataforma.

{{< /tab >}}
{{< tab tabName="Interfaces">}}

<h4 style="color:gray;padding-bottom:10px;padding-top:20px"><i>¿Cómo interactúan y consumen los usuarios las capacidades de la plataforma?</i></h4>

Las interfaces provistas por plataformas afectan cómo los usuarios interactúan con las ofertas de capacidades que ofrece para aprovisionar, gestionar y observar. Las interfaces pueden incluir sistemas de tickets, plantillas de proyecto y portales gráficos así como APIs automatizables y herramientas de línea de comandos(CLI).

Las características principales de una interface incluyen qué tan descubribles y amigables resultan ser para el usuario durante tareas clave para ellos, como ser un requerimiento inicial, mantenimiento o triage de incidentes. Aquí los niveles de madurez más elevados reflejan interfaces más integradas, consistentes, automatizadas y soportadas.

### Nivel 1, Provisional — Procesos personalizados

Existen un conjunto variado de procesos para aprovisionar diferentes capacidades y servicios, pero no se considera la consistencia de la interfaz. Procesos personalizados a medida atienden las necesidades inmediatas de individuos o equipos que dependen de intervención manual aún si el proveedor usa algunos scripts de implementación automatizada.

El conocimiento de cómo solicitar estas soluciones se comparte de persona en persona. El proceso de requerir un servicio no está estandarizado ni es consistente. El aprovisionamiento y uso de un servicio de plataforma suele requerir bastante soporte del proveedor de la capacidad.

La falta de requerimientos centrales y estándares hace de este nivel el apropiado cuando una compañía aún no ha identificado y documentado expetactativas. Puede ser particularmente efectivo para equipos de compañías o esfuerzos de plataforma en etapa temprana. En estos entornos los equipos tienen la libertad de evolucionar procesos y capacidades para sus necesidades, lo que les permite entregar con mayor rapidez y pagar el precio de estandarizar a posterior, solo cuando sea necesario.

#### Características:

* La interacción de usuarios no es un tema clave de discusión y las interacciones rara vez (o ninguna) son probadas durante el diseño y entrega de nuevas capacidades.
* Las capacidades son provistas principalmente mediante solicitudes manuales, si bien los proveedores pueden elegir automatizar algunas o todas las atividades necesarias para aprovisionar una solicitud de usuario.
* Las solicitudes que se encuentran en fase “simple” se vuelven complejas debido la dificultad para encontrar el proceso adecuado a seguir.
* En ocasiones un proceso se muestra como autorizado, pero los usuarios tienen problemas cuando un departamento o equipo diferente se involucra.


#### Escenarios de ejemplo:

* Un equipo de plataforma quiere realizar una prueba de rendimiento de su nuevo cambio. Para esto, quieren un entorno aislado que contenga suficientes datos de prueba que permita obtener un rendimiento preciso de lectura. La última vez que realizaron esta solicitud, un antiguo compañero de equipo logró acceder a un entorno, pero ya no está en el equipo y nadie sabe como recrearlo. Al final, se contactan con un ingeniero del equipo de infraestructura quien puede aprovisionarles un entorno en unos pocos días.
* Un equipo en la fase exploratoria de un desarrollo de producto usa un proceso a medida para aprovisionar un nuevo servicio de nube sin tener que validar que su solución merezca mayor inversión.

### Nivel 2, Operativo — Herramientas estándar

Existen interfaces consistentes y estandarizadas para el aprovisionamiento u observabilidad de las plataformas y capacidades y cubren amplias necesidades. Los usuarios pueden identificar qué capacidades están disponibles y tienen la posibilidad de solicitar otras capacidades que pudieran requerir.

Se proveen "rutas pavimentadas" (_"paved roads"_) o  "rutas doradas" (_"golden paths"_), en forma de documentación y plantillas. Estos recursos definen cómo aprovisionar y gestionar las capacidades típicas utilizando patrones probados y conformes con las definiciones de la organización. Si bien algunos usuarios pueden usar estas soluciones por sí mismos, las soluciones aún suelen requerir un alto grado de especialidad y por lo tanto el soporte de quienes las mantienen sigue siendo vital.

#### Características:

* Las soluciones técnicas son herramientas integradas, específicas para área de dominio, no siempre son herramientas familiares para los usuarios.
* Existe inversión en un trayecto común; sin embargo, la desviación de ese trayecto descubre con rapidez las pocas opciones de personalización debido a que el foco estuvo en construir una única opción.
* Gracias a la estandarización, grupos informales internos pueden crear y compartir buenas prácticas y superar problemas compartidos.
* Puede haber desviación en la implementación de capacidades debido a que los equipos toman las plantillas, las personalizan, pero luego no pueden fusionar los cambios con el equipo central.

#### Escenarios de ejemplo:

* Un equipo central adecúa una librería de módulos de Terraform, controladores de Kubernetes y CRDs para aprovisionar diferentes tipos de infraestructura.
* Una ubicación compartida contiene documentos extensos sobre las soluciones en la organización.

### Nivel 3, Escalable — Soluciones de autoservicio

Las soluciones se ofrecen de tal forma que proveen autonomía a los uusarios y requieren poco soporte de quienes las mantienen. La organización alienta y disponibiliza soluciones con interfaces consistentes que permiten el descubrimiento y portabilidad de la experiencia del usuario de una capacidad a otra. Si bien ofrecen autoservicio, las soluciones requieren información de equipo e implementación. Para mejorar esta experiencia puede haber un lenguaje interno guiado y simplificado que permita a los usuarios adoptar e integrar capacidades de plataforma con mayor rapidez. Esto genera un conjunto de capacidades focalizadas en el usuario, de autoservicios y consistentes.

#### Características:

* Las soluciones se ofrecen como implementaciones de “un-click”, permitiendo que los equipos se beneficien de una capacidad sin necesidad de comprender cómo se aprovisionan.
* Si bien las soluciones son fáciles de crear, puede que no haya mucha facilidad de uso construída para la gestión de la solución en el día 2 y más allá
* Sigue existiendo un trayecto acotado de soluciones disponibles, dejando a los usuarios con requerimientos únicos para los que no se sabe bien cómo proceder.

#### Escenarios de ejemplo:

* Se provee una API que abstrae la creación y mantenimiento de bases de datos y provee a los usuarios la información requerida para aprovechar esa capacidad de la plataforma, como ser cadena de conexión, ubicación de datos secretos y tablero con datos de observabilidad.

### Nivel 4, Optimizable — Servicios integrados

Las capacidades de plataforma están integradas con transparencia en las herramientas y procesos que los equipos utilizan para hacer su trabajo. Algunas capacidades se aprovisionan automáticamente, como ser observabilidad o gestión de identidades para un servicio desplegado. Cuando los usuarios llegan al límite de los servicios provistos, tienen la oportunidad de hacer a un lado las soluciones automatizadas y personalizarlas para sus necesidades, sin dejar las ofertas internas porque las capacidades de plataforma están consideradas como bloques para armar. Estos bloques para armar se usan para construir composiciones transparentes y automáticas para cubrir los casos de uso de alto nivel a la vez que habilitan una personalización más profunda donde sea necesaria.

#### Características:

* Está claro qué capacidades son diferenciadoras para la organización y cuales no, permitiendo que los equipos internos inviertan en soluciones personalizadas solo cuando no puedan aprovechar los estándares de la industria.
* Si bien las capacidades presentan una navegación consistente, no hay una única forma de usar una capacidad. Algunas son más adecuadas como herramientas de linea de comandos para usar en scripts, mientras que otras se benefician de la integración con lo que el usuario utilice para escribir código en sus editores e IDEs.
* El valor de las capacidades individuales se extiende con foco en el flujo tanto del desarrollo como de liberación del software, lo que lleva a focalizar en cómo combinar capacidades en ofertas de mayor nivel.
* Si bien las capacidades usualmente se proveen en paquetes, los super usuarios pueden descomponer estas ofertas de alto nivel para optimizar cuándo y dónde se necesite.

#### Escenarios de ejemplo:

* Se inyectan agentes de observabilidad en toda carga de trabajo y se ubica un proxy OIDC frente a todas las aplicaciones.
* Por defecto, cada nuevo proyecto recibe un espacio en un ejecutor de tareas (pipelines) y un entorno de ejecución (namespace de K8s), sin embargo un proyecto puede optar por otras opciones, como ser la ejecución en entorno serverless.
* Desde un catálogo en un portal de Service Now un usuario selecciona "Aprovisionar una Base de Datos." Un proceso automatizado aprovisiona una base de datos RDS y envía una URL y ubicación para obtener credenciales para el usuario.

{{< /tab >}}
{{< tab tabName="Operaciones">}}

<h4 style="color:gray;padding-bottom:10px;padding-top:20px"><i>¿Cómo se planifican, priorizan, desarrollan y mantienen las plataformas y sus capacidades?</i></h4>

La operación de plataformas implica ejecutar y soportar sus capacidades y funcionalidades en todo su ciclo de vida, incluyendo la aceptación de nuevos requerimientos, releases iniciales, actualizaciones y extensiones, mantenimiento y operación permanente, soporte a usuarios e incluso deprecación y remoción. Las organizaciones y sus equipos de plataformas elijen las plataformas y capacidades a crear y mantener y pueden priorizar las iniciativas más valiosas e impactantes.

Notablemente, la mayor parte del trabajo para proveer una capacidad se realiza posterior a su release inicial, al proveer actualizaciones sin impacto, funcionalidades nuevas y mejoradas, soporte operativo y habilitación y educación al usuario final. Por lo tanto, una plataforma valiosa y de impacto planificará de antemano la gestión de su plataforma para operaciones de largo plazo y confiabilidad.

### Nivel 1, Provisional — A demanda

Las plataformas y capacidades se desarrollan, publican y actualizan de manera reactiva, en base a pedidos y requisitos ad hoc de equipos de producto. Los equipos de producto pueden incluso necesitar planificar y construir las capacidades que ellos mismos requieren.

Los equipos que construyen una nueva capacidad para cubrir sus propias necesidades, ya sean equipos centrales dedicados o equipos de aplicaciones, solo toman una responsabilidad informal para dar soporte a otros que la utilizan. No se espera de ellos un mantenimiento activo y existen pocos procesos para vetar la calidad de la oferta. En este nivel, las implementaciones suelen ignorarse hasta que se descubre alguna vulnerabilidad de seguridad, un defecto previene su uso o se presenta un nuevo requerimiento, y en ese momento puede llegar a implementarse con rapidez otro plan reactivo.

#### Características:

* Las capacidades se crean para cubrir necesidades que generan presión en equipos de aplicación individuales.
* El foco está en la entrega inicial de capacidades centrales; no se hacen planes para un mantenimiento y sustentabilidad duradero.
* Las implementaciones de capacidad generalmente llegan tarde y necesitando actualizaciones.
* Aparecen picos repentinos de trabajo asociados a cambios de alto impacto introducidos de forma tardía a las capacidades, como ser el descubrimiento de una vulnerabilidad.
* Los cambios pueden provocar caídas de servicios tanto planificadas como no planificadas.
* Cada actualización se hace en forma personalizada y requiere tiempo e investigación para establecer un proceso en cada actualización.

#### Escenarios de ejemplo:

* Se anuncia la vulnerabilidad de seguridad Log4Shell y la organización se apresura a designar un equipo de especialistas para investigar dónde podría existir una vulnerabilidad en la organización e instigar la aplicación de patches. Una vez que el equipo identifica el impacto, debe trabajar codo a codo con una cantidad de equipos diferentes dado que cada uno de ellos gestiona sus propios servidores y tienen procesos de actualización diferentes. Incluso cuando este trabajo se considera finalizado, el nivel de confianza de que no existan instancias que no se hayan cubierto, es escaso.


### Nivel 2, Operativo — Registro central

Las plataformas y capacidades están centralmente documentadas y descubribles y los procesos para planificar y gestionar el ciclo de vida de capacidades están, por lo menos, parcialmente definidos. La responsabilidad y dueños de cada servicio y función están documentados. Los procesos de gestión del ciclo de vida varian entre capacidades, dependiendo de sus dueños y prioridades. Un equipo central mantiene, o tiene la capacidad a demanda, de generar un inventario de requerimientos pendientes que indique el estado de mantenimiento de las capacidades actuales. Esto permite a la organización registrar el progreso hacia la oferta de capacidades y el cumplimiento con los requerimientos de actualización.

#### Características:

* Los equipos de plataforma crean nuevas capacidades según se necesite para cumplir necesidades urgentes.
* Un equipo central provee un registro de servicios compartidos disponibles para toda la organización.
* Se aplican estándares flexibles a las capacidades, tales como incluir una API automatizable y documentos de uso.
* Se usa infraestructura como código para facilitar la trazabilidad de los servicios desplegados.
* Se habilitan, mediante los inventarios de servicios, auditorias para el cumplimiento de regulaciones tales como PCI DSS o HIPAA.
* Los trabajos de migración y actualización se registran en un gráfico de trabajo pendiente, que permite a la organización registrar el grado de cumplimiento y el tiempo para completarlos.
* Los registros no indican el nivel de soporte; en este nivel, las actualizaciones con frecuencia siguen siendo manuales y personalizadas.

#### Escenarios de ejemplo:

* PostgreSQL 11 llega al fin de su ciclo (EOL) a fin de año. La organización sabe qué bases de datos requieren una actualización y agendan el trabajo en las tareas pendientes de cada equipo.

### Nivel 3, Escalable — Habilitación central 

Las plataformas y capacidades no solo están centralmente registradas sino también centralmente orquestadas. Los equipos de platforma tienen la responsabilidad de entender las necesidades más amplias de la organización y priorizar el trabajo entre equipos de plataforma e infraestructura en consonancia. Se espera de aquellos responsables de una capacidad, no solo que la mantengan tecnicamente, sino también de proveer experiencias estándar de usuario para integrar la capacidad con otros servicios relacionados en la organización, asegurar un uso seguro y confiable e incluso proveer observabilidad.

Existen procesos estándar para la creación y evolución de nuevas capacidades, permitiendo que cualquiera en la organización pueda contribuir con una solución que cubra expectativas. Procesos continuos de entrega de capacidades y funcionalidades de plataforma permiten despliegues y restauraciones regulares. Los grandes cambios se planifican y coordinan en la medida que sean cambios de producto de cara a los clientes.

#### Características:

* Los equipos de aplicaciones solicitan servicios a los equipos de plataforma antes antes de crearlos.
* Los nuevos servicios deben adherir a prácticas estándar como ser interfaces estándar, documentación y gobierno.
* Los procesos de actualización están documentados y son consistentes entre versiones y servicios.
* En los casos donde el proveedor de la capacidad no gestiona una actualización, provee herramientas y soporte a los usuarios para lograr impacto mínimo.

#### Escenarios de ejemplo:

* La organización va a actualizar a RHEL 9. Al hacerlo, cada equipo de aplicación necesita validar que su software continúe funcionando. Para permitir esta fase de prueba, el equipo de cómputos central está configurando entornos de prueba para cada equipo, con el software y las versiones de S.O. adecuadas.

### Nivel 4, Optimizable — Servicios gestionados

El ciclo de vida de cada capacidad se gestiona de manera estandarizada y automatizada. Las capacidades, funcionalidades y actualizaciones son entregadas en forma continua sin impacto en los usuarios. Cualquier cambio importante, instigado por los proveedores de plataforma, incluye planes de migración para los usuarios existentes con responsabilidades y tiempos definidos.

Los proveedores de capacidades de plataforma asumen la mayor parte de la responsabilidad para el mantenimiento, pero hay un contrato claro, un "modelo de responsabilidad compartida", que describe las responsabilidades de usuarios, permitiendo que ambos lados operen mayormente con autónomía.

#### Características:

* Un modelo de responsabilidad compartida define claramente quién es responsable de las plataformas y sus capacidades y qué se espera de los usuarios. 
* Los equipos crean scripts tanto para la ejecución de la actualización y cualquier estrategia de restauración para mantener bajos el riesgo y el impacto.

#### Escenarios de ejemplo:

* A los usuarios de máquinas virtuales no se les requiere que gestionen nada relacionado con actualizaciones de versiones. Su única responsabilidad es tener un escenario en su pipeline de entrega, que contenga una prueba de humo representativa. Luego se les pide que declaren sus aplicaciones ya sea como de baja tolerancia, en caso que la misma deba esperar a un upgrade totalmente probado, o de alta tolerancia, para ser considerada como pionera. La capacidad de máquina virtual gestiona luego el release automático de las actualizaciones, incluyendo restauraciones en caso de falla, ya sea durante las pruebas de humo como en los canary releases.

{{< /tab >}}
{{< tab tabName="Medición">}}

<h4 style="color:gray;padding-bottom:10px;padding-top:20px"><i>¿Cómo es el proceso para obtener e incorporar retroalimentación y aprendizaje?</i></h4>

Al reaccionar ante la retroalimentación explícita o implícita de los usuarios, las organizaciones pueden incrementar la satisfacción del usuario y asegurar sustentabilidad a largo plazo. Para mantener la relevencia de una plataforma, las organizaciones deben balancear entre la innovación y cubrir las demandas de los usuarios. A medida que la tecnología y las preferencias de los usuarios cambian, las plataformas ágiles y adaptables a estos cambios, serán las que prevalezcan. Reveer y redefinir regularmente el mecanismo de retroalimentación puede optimizar aún más el desarrollo de plataforma y mejorar el compromiso del usuario.

### Nivel 1, Provisional — Ad hoc

Las métricas de uso y satisfaccción se obtienen de forma personalizada, en cada plataforma y capacidad si es que se cuenta con ellas. Los resultados y medidas de éxito no están alineadas de manera consistente entre capacidades y por lo tanto no se obtiene información que se pueda corresponder. La retroalimentación de usuario y la instrumentación de uso de la plataforma no puede obtenerse, o si se obtiene, será informal. Se toman decisiones en base requerimientos anecdóticos y datos incompletos.

#### Características:

* No hay experiencia u opiniones acerca de cómo medir el éxito de las plataformas
* Se usan herramientas familiares para obtener métricas comunes con intenciones y consideracions limitadas
* Dependencia en poca cantidad de datos
* Dificultad para asegurar la participación del usuario — los usuarios creen que su retroalimentación no es considerada
* Si se usan encuestas, las preguntas cambian entre versiones, negando la posibilidad de registrar progreso.

#### Escenarios de ejemplo:

* Un líder técnico de plataforma quiere mejorar la colaboración con usuarios agregando temas principales a su próxima planificación trimestral. Se decide realizar una encuesta sobre qué les gustaría ver a los usuarios. La respuestas es abrumadora, lo que es prometedor, pero también resulta en una dificultad para organizar y responder a todas esas ideas. Si bien algunas ideas influencian la planificación del trimestre, los usuarios no ven que sus ideas hayan sido consideradas y están menos dispuestos a responder la próxima encuesta.
* El equipo quiere capturar más datos automáticamente, por lo que buscan oportunidades de fácil recolección como las fallas de pruebas en CI. Sin embargo, no todo equipo usa la misma automatización de CI, por lo que los datos solo están disponibles para aplicaciones Java aún cuando algunos equipos han cambiado las codificación de sus servicios a Scala.

### Nivel 2, Operativo — Recolección consistente

Las organizaciones en este nivel tienen el objetivo interno de verificar que los productos de plataforma cubran las necesidades del mercado y de sus usuarios internos. Se valora que la recolección de retroalimentación de usuarios sea procesable y estructurada. Pueden asignarse equipos dedicados o individuos para obtener retroalimentación, asegurando un acercamiento más consistente. Los canales de retroalimentación como encuestas o foros de usuario están estandarizados y la retroalimentación está categorizada y priorizada. Más allá de la retroalimentación del usuario, también hay una expectativa de que las experiencias de usuario sean instrumentadas para generar datos de uso en el tiempo.

Se mantienen los desafíos de traducir la retroalimentación en tareas concretas. Mientras que hay un repositorio creciente de datos, la organización podría necesitar comprender e integrar efectivamente estas devoluciones en el roadmap de la platforma. Puede resultar dificil asegurar que los usuarios vean cambios tangibles derivados de su retroalimentación.

#### Características:

* La recolección de datos se discute en la mayor parte de las sesiones de planificación o de implementación de capacidades.
* Puede que falte alinearse sobre qué exactamente debe medirse para verificar el éxito.
* Las funcionalidades de plataforma pueden medirse por éxito, como ser medir la adopción del usuario o tiempo de usuario ahorrado.

#### Escenarios de ejemplo:

* Un equipo de plataforma dedica el 20% de su tiempo a funcionalidades definidas por usuario, que se identifican en base a encuestas y otras tícas de entrevista. Sus respuestas se recopilan en una herramienta que permite votar y comentar para refinar aún más las prioridades. Durante la implementación los usuarios solicitantes son abordados para que colaboren en los primeros diseños e implementaciones. Una vez implementados, se realizan anuncios que se aseguran de que los usuarios solicitantes están informados sobre las nuevas funcionalidades y que soporten su adopción 
* El equipo con foco en capacidades de entrega de software quiere capturar más datos automaticamente incluyendo el tiempo de ciclo, el cual se automatiza por medio de la herramienta de build desde el commit a producción. Existe un acuerdo en que el tiempo de ciclo puede incluir otras actividades como PR review, pero no está incluido en este momento.

### Nivel 3, Escalable — Ideas

En esta tapa, mientras que ya existen mecanismos robustos y estándar de retroalimentación, los datos se recolectan de manera personalizada para lograr ideas y acciones específicas y estratégicas. Los resultados deseados se identifican con métricas estándar seleccionadas para indentificar progreso hacia los resultados esperados. Se pueden usar marcos y estándares de la industria para beneficiarse de investigaciones sobre el impacto de ciertos comportamientos.

Se emplean equipos o herramientas dedicadas a obtener y revisar la retroalimentación y sumarizar las ideas viables. Se establece un relacionamiento simbiótico entre producto de plataforma y sus usuarios. La retroalimentación se considera un activo estratégico que guía las operaciones y roadmap de la plataforma. Pueden instituirse sesiones regulares de revisión de retroalimentación, donde equipos de diferentes funciones se unen para discutir y definir estrategias basadas en las ideas de usuarios. 

#### Características:

* Antes de entregar una nueva funcionalidad de plataforma, el equipo discute cómo evaluar el resultado de su trabajo.
* La organización está ampliamente alineada con métricas que indican el éxito de las iniciativas de plataforma.
* Un [Product Manager]({{< ref "/wgs/platforms/glossary#platform-team" >}}) o un miembro dedicado del equipo conduce una permanente y consistente recolección de retroalimentación y proceso de análisis.
* La organización ha establecido métricas y objetivos para observar apuntando al éxito.

#### Escenarios de ejemplo:

* La organización ha registrado consistentemente los tiempos de producción y ejecución de cambios. Sin embargo, ahora se dan cuenta de que, si bien son métricas fáciles de recolectar, por sí solas no ofrecen un panorama completo de la entrega de software. Con esto en mente, el equipo implementa métricas para la confiabilidad y estabilidad del servicio.

### Nivel 4, Optimizable — Cuantitativo y cualitativo

La retroalimentación y las métricas están profundamente integradas en la cultura de la organización. Toda la organización, desde los ejecutivos más altos a todos los ingenieros, reconocen el valor de la recolección de datos y la retroalimentación en la evolución del producto. Hay una democratización de datos, donde varios beneficiarios, incluyendo los usuarios de plataforma y líderes de negocio, están involucrados activamente en la identificación de hipótesis para mejorar la plataforma, aportando retroalimentación duante el proceso de diseño y luego midiendo el impacto posterior a la entrega. Todas estas mediciones son consideradas al planificar iniciativas en la plataforma.

No solo se utilizan marcos estándar sino que también existe un entendimiento de que tomar medidas desde múltiples ángulos crea un panorama más holístico. Hay una inversión para comprender cómo las medidas cualitativas cambian a medida que las cuantitativas mejoran. Se tiene un foco en identificar mediciones clave que permiten anticipar funcionalidades que soportaran las necesidades de usuarios, aliviarán sus desafíos y mantenerse por delante de las tendencias de la industria y requerimientos del negocio.

#### Características:

* Los equipos de plataforma buscan continuamente formas de mejorar las métricas que miran y la forma en la que obtienen datos.
* La organización está familiarizada y es sensible a [la ley de Goodhart](https://es.wikipedia.org/wiki/Ley_de_Goodhart): "Cuando una medida se convierte en objetivo, deja de ser una buena medida."
* Las métricas y telemetría obtenidas son evaluadas constantemente en cuanto a vericidad de información y valor.
* La gestión de datos de métricas está bien soportada, con herramientas como capacidades estándar de la plataforma para gestionar _data lakes_ e información derivada.
* Se promueve la colaboración inter departamental para evitar silos de datos y permitir ciclos efectivos de retroalimentación.

#### Escenarios de ejemplo:

* Con el tiempo, la organización ha recolectado datos que indican un aumento en el tiempo del build de más del 15%. Esto genera experiencias negativas en el desarrollo y una vez generadas, aun si el tiempo de build se reduce por debajo del tiempo original, los desarrolladores permanecen frustrados por más tiempo. Este hecho lleva al equipo de build a establecer y adherirse a un Service Level Objective (SLO), que permite la identificación temprana y mejora antes de que se instigue el ciclo negativo con sus usuarios.

{{< /tab >}}
{{< /tabs >}}
</div>

</br>

---
## Conclusión

Las plataformas y quienes las mantienen, proveen los fundamentos para el desarrollo ágil de productos digitales. Proveen un conjunto consistente de capacidades que habilitan el desarrollo y entrega de software eficiente. Este modelo de madurez provee un mapa para su viaje hacia Ingeniería de Plataforma.

NOTA: en caso de considerarlo necesario, puede consultar la versión más reciente de este documento [en Inglés](https://tag-app-delivery.cncf.io/es/whitepapers/platform-eng-maturity-model/)

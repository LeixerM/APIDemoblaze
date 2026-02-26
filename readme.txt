# 🚀 Para Ejecutar el proyecto se debe tener en cuenta las siguientes recomendacione
---

## 🛠️ Configuraciones e instalaciones

* **☕2. Debe tener instalado y Configurado Gradle versión 9.0.0
* **🐘3. Debe tener instalado y Configurado Java versión 21
* **💻4. Debe tener instalado y Configurado IDE **IntelliJ IDEA** y **Cucumber** y **Karate** activos


## 📥 Configuración Inicial
5. **Importar el proyecto:**   en Intellij IDEA desde el archivo build.gradle
6. **El proyecto se ejecuta**: desde el archivo runner llamado "TestRunner" en donde cada caso se especifico por Tag en donde están 4 casos :
	- @signupSuccessful
	- @signupExistingUser
	- @loginSucessfully
	- @loginFailed

---

## 🧪 Estrategia de Ejecución
El proyecto se organiza mediante **Tags** para ejecutar escenarios específicos de forma aislada.
7. En donde si se quiere ejecutar desde TestRunner se debe poner el tag especifico del caso que se quiera ejecutar en donde se visualiza lo siguiente: 
.tags("@loginFailed") -> En este debemos poner el caso/escenario que queramos ejecutar desde TestRunner según los mencionades en el paso 6.
8. Al ejecutar el TestRunner por caso/escenario en especifico detallado en los dos anteriores pasos se visualiza el reporte de la siguiente manera:
 HTML report: (paste into browser to view) | Karate version: 1.4.1
file:///C:/Users/HP/IdeaProjects/APIDemoblaze/build/karate-reports/karate-summary.html -> Se da click en el hipervínculo y se abre el reporte de la prueba 



### 1️⃣ Ejecución desde el IDE (TestRunner)
Localice el archivo **"TestRunner"** y defina el tag deseado:



> **Configuración:** `.tags("@loginFailed")`
> *Nota: Aquí se debe poner el caso/escenario del paso anterior que se desee probar*.

### 2️⃣ Ejecución por Terminal
Utilice el siguiente comando para ejecuciones rápidas o desde consola:

```bash
./gradlew test "-Dkarate.options=--tags @login"

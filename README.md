# 🍕 Pizza‑Web — Spring Boot 3 · JSP · Bootstrap 5

Sample application that combines **Spring Boot 3.5 GA**, **Spring MVC** and **JSP/JSTL** to render pages while exposing a small JSON REST API.

> **Default URL** after running `java -jar target/pizza.jar`
> `http://localhost:8080/`

---

## ✨ Key technologies

| Layer       | Technologies                                                     |
|-------------|------------------------------------------------------------------|
| **UI**      | JSP + JSTL · WebJars (Bootstrap 5.3.6 & jQuery 3.7.1)             |
| **Back‑end**| Spring Boot 3.5 · Spring MVC 6 · Jakarta Servlet 6                |
| **Data**    | PostgreSQL (driver 42.7.6) — optional, configurable              |
| **Build**   | Maven 3.9 · Java 21 LTS                                          |
| **DX**      | Spring DevTools (hot‑reload)                                      |

---

## 🚀 How to run

```bash
# 1) Full build
mvn clean package

# 2) Run the bootable WAR
java -jar target/pizza.jar
# ↳ the app starts at http://localhost:8080
```

---

## 🔗 Main endpoints

| Method | URL             | Description                                   |
|--------|-----------------|-----------------------------------------------|
| GET    | `/`             | Home page (pizza list rendered via JSP)       |
| GET    | `/pizza`        | REST API – full pizza list (JSON)             |
| GET    | `/pizza/{name}` | REST API – pizza by name (case‑insensitive)   |

Quick examples:

```
http://localhost:8080/
http://localhost:8080/pizza
http://localhost:8080/pizza/Pizza%204
```

---

## 📂 Project structure

```
src/
 ├─ main/
 │   ├─ java/
 │   │   └─ com/
 │   │       ├─ MainApp.java       » Spring Boot bootstrap class
 │   │       ├─ controller/        » MVC & REST controllers
 │   │       └─ model/             » domain entities
 │   ├─ resources/
 │   │   └─ application.yml        » Spring/DB configuration
 │   └─ webapp/
 │       └─ WEB-INF/
 │           └─ jsp/               » JSP views (JSTL)
 └─ test/
     └─ …                           » JUnit 5 tests
```

---

## ⚙️ Minimal configuration (`application.yaml`)

```yaml
spring:
  mvc:
    view:
      prefix: /WEB-INF/jsp/
      suffix: .jsp

server:
  port: 8080            # change if necessary

logging:
  level:
    org.springframework.web: INFO  # DEBUG during development
```

---

## 🛠️ Development tips

* **Hot reload:** with `spring-boot-devtools` on the classpath, saving a file triggers automatic restart + LiveReload (if enabled).
* **Configuration overrides:** set env vars or use `--spring.profiles.active=prod` to switch settings between DEV/PROD.
* **Migrations:** add Flyway or Liquibase starter to version‑control your DB schema.

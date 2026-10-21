# Stack detection (follow what exists; never add a second way)
| Look at | Learn |
|---|---|
| `package.json` / `pyproject.toml` / `go.mod` / `pom.xml` / `build.gradle` / `*.csproj` / `Gemfile` / `composer.json` | language, framework (Nest/Express/Fastify, FastAPI/Django, Go, Spring, .NET, Rails, Laravel), scripts |
| ORM / query layer | Prisma, TypeORM, Drizzle, SQLAlchemy, Django ORM, GORM/sqlc, JPA/Hibernate, EF Core, ActiveRecord |
| migrations folder + tool | Prisma Migrate, Alembic, Django, Flyway, Liquibase, golang-migrate, EF, Rails |
| contract tooling | OpenAPI codegen for server stubs/types, request/response validation middleware, Schemathesis, Dredd, Pact |
| test setup | Jest/Vitest, pytest, go test, JUnit, xUnit, RSpec; Testcontainers; docker-compose test services; HTTP stubs (nock, WireMock, respx) |
| auth | middleware/guards/policies used for authn and authz |
| errors | the shared error type and the mapper to the contract's error shape |
| observability | logger, metrics, tracing setup |
| jobs / events | queue library, outbox table, analytics/event wrapper |
| existing similar feature | the pattern to copy |
Record the result in your journal once per repo; reuse it next time.

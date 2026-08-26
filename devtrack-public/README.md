# DevTrack API

> Secure project and task management REST API for teams.

DevTrack provides a REST API for users, projects, project memberships, and tasks with JWT authentication and role-based access control.

## Live API

**Base URL**

https://devtrack-private.onrender.com

**Swagger UI**

https://devtrack-private.onrender.com/swagger-ui/index.html

The API can be consumed by any application capable of making HTTPS requests. The backend source code is maintained separately in a private repository.

## Quick Start

1. Open Swagger UI.
2. Register a user.
3. Log in and obtain the JWT.
4. Authorize protected requests with `Authorization: Bearer <JWT_TOKEN>`.
5. Use the project, member, and task endpoints.

## Health

`GET /`

Expected response:

```json
{
  "success": true,
  "swagger": "/swagger-ui/index.html",
  "message": "DevTrack API is running"
}
```

## Authentication

### Register

`POST /api/v1/auth/register`

```json
{
  "firstName": "John",
  "lastName": "Doe",
  "email": "john@example.com",
  "password": "Password@123"
}
```

### Login

`POST /api/v1/auth/login`

```json
{
  "email": "john@example.com",
  "password": "Password@123"
}
```

The login response contains a JWT token. Use it for protected endpoints:

`Authorization: Bearer <JWT_TOKEN>`

## API Reference

| Area | Method | Endpoint | Access |
|---|---|---|---|
| Authentication | POST | `/api/v1/auth/register` | Public |
| Authentication | POST | `/api/v1/auth/login` | Public |
| Users | GET | `/api/v1/users` | Admin, Manager |
| Users | GET | `/api/v1/users/{id}` | Admin |
| Users | PUT | `/api/v1/users/{id}` | Admin |
| Users | DELETE | `/api/v1/users/{id}` | Admin |
| Projects | POST | `/api/v1/projects` | Admin, Manager |
| Projects | GET | `/api/v1/projects` | Admin, Manager |
| Projects | GET | `/api/v1/projects/{id}` | Project access |
| Projects | PUT | `/api/v1/projects/{id}` | Admin, Manager |
| Projects | DELETE | `/api/v1/projects/{id}` | Admin, Manager |
| Members | POST | `/api/v1/projects/{projectId}/members` | Admin, Manager |
| Members | GET | `/api/v1/projects/{projectId}/members` | Project access |
| Members | DELETE | `/api/v1/projects/{projectId}/members/{userId}` | Admin, Manager |
| Tasks | POST | `/api/v1/projects/{projectId}/tasks` | Admin, Manager |
| Tasks | GET | `/api/v1/projects/{projectId}/tasks` | Project access |
| Tasks | GET | `/api/v1/tasks/{taskId}` | Project access |
| Tasks | PUT | `/api/v1/tasks/{taskId}` | Admin, Manager |
| Tasks | DELETE | `/api/v1/tasks/{taskId}` | Admin, Manager |

For complete schemas and examples, use Swagger UI.

## Response Format

```json
{
  "success": true,
  "message": "Operation successful",
  "data": {},
  "timestamp": "2026-08-26T05:24:47"
}
```

## Roles

| Role | Capability |
|---|---|
| `ADMIN` | Full user and project administration |
| `MANAGER` | Manage projects, members, and tasks according to access rules |
| `MEMBER` | View resources for projects they belong to |

## Security

Never commit or share database credentials, JWT signing secrets, production passwords, JWT tokens, or internal infrastructure credentials.

Always use HTTPS for production API communication.

## Documentation

- [Getting Started](docs/getting-started.md)
- [Authentication](docs/authentication.md)
- [Users](docs/users.md)
- [Projects](docs/projects.md)
- [Members](docs/members.md)
- [Tasks](docs/tasks.md)
- [Errors](docs/errors.md)
- [Examples](docs/examples.md)

## Links

- Live API: https://devtrack-private.onrender.com
- Swagger: https://devtrack-private.onrender.com/swagger-ui/index.html

## Source Code

The DevTrack backend source code is maintained in a private repository. This public repository contains API documentation and integration examples only.

## License

See [LICENSE](LICENSE).

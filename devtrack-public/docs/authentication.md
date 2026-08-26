# Authentication

DevTrack uses JWT-based stateless authentication.

## Register

`POST /api/v1/auth/register`

```json
{
  "firstName": "John",
  "lastName": "Doe",
  "email": "john@example.com",
  "password": "Password@123"
}
```

## Login

`POST /api/v1/auth/login`

```json
{
  "email": "john@example.com",
  "password": "Password@123"
}
```

The login response contains a JWT token.

For protected requests:

`Authorization: Bearer <JWT_TOKEN>`

Never commit JWT tokens to source control.

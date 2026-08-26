# API Examples

## Register

```bash
curl -X POST "https://devtrack-private.onrender.com/api/v1/auth/register" \
  -H "Content-Type: application/json" \
  -d '{"firstName":"John","lastName":"Doe","email":"john@example.com","password":"Password@123"}'
```

## Login

```bash
curl -X POST "https://devtrack-private.onrender.com/api/v1/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email":"john@example.com","password":"Password@123"}'
```

## Authenticated request

```bash
curl -X GET "https://devtrack-private.onrender.com/api/v1/projects" \
  -H "Authorization: Bearer YOUR_JWT_TOKEN"
```

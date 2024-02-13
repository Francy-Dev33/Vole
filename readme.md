# create array Map 
```js
const map = []

#and sample Json app 
```json
{
  "database": {
    "host": "localhost",
    "port": 3306,
    "username": "root",
    "password": "password123",
    "database_name": "my_database"
  },
  "mapping": {
    "tables": [
      {
        "name": "users",
        "fields": [
          {
            "name": "id",
            "type": "integer"
          },
          {
            "name": "username",
            "type": "string"
          },
          {
            "name": "email",
            "type": "string"
          }
        ]
      },
      {
        "name": "posts",
        "fields": [
          {
            "name": "id",
            "type": "integer"
          },
          {
            "name": "title",
            "type": "string"
          },
          {
            "name": "content",
            "type": "text"
          }
        ]
      }
    ]
  }
}


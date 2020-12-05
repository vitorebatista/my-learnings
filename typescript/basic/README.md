# ts-tests

## Basic Usage
```sh
docker run --name tsnode -p 27017:27017 -d mongo

yarn dev
```

Open the Postman and call:

* Get localhost:4444/users - you will see:
```json
[]
```

* Post localhost:4444/users
```json
{
	"email": "vitorebatista@gmail.com",
	"firstName": "Vitor",
	"lastName": "Batista"
}
```
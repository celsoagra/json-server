# json-server on Docker

Json-server on docker alpine Environment. Please, see [https://github.com/typicode/json-server](github) and [https://www.npmjs.com/package/json-server](npmjs) for more details.

## Running instance

Type `docker run` as the example below, to initialise localhost service:

```bash
$ docker run -d -P -v /home/user/data:/data -e filename=db.json celsoagra/json-server
```

Take a look on `http://localhost:<port>/` to see resources and methods that can be supported by Json Server.

## Examples

Here is some file examples:

### JSON file


```json
{
  "posts": [
    { "id": 1, "title": "json-server", "author": "typicode" }
  ],
  "comments": [
    { "id": 1, "body": "some comment", "postId": 1 }
  ],
  "profile": { "name": "typicode" }
}

```

### JS file

```javascript
module.exports = () => {
  const data = { users: [] }
  // Create 1000 users 
  for (let i = 0; i < 1000; i++) {
    data.users.push({ id: i, name: `user${i}` })
  }
  return data
}

```

## Contributing

Feel free to use this project and add more features!

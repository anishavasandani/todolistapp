# TO-DO LIST APP

Hello there,

Welcome to the to-do-list app!

## Gems Used

1. devise -- for authentication 
2. acts_as_api -- for JSON responses
3. rails-spec -- for testing

It's my first time using #1 & #2, so bear with me! 

## Authentication

HTTP Digest is used for authentication purposes.

## API: JSON Response

### Request

* Requires authentication and current password (user account must exist)
* HTTP method: PUT
* URL: http://localhost:3000/users/sign_in (runs locally)
* Request Body:

```
{
    "name": "Anisha Vasandani",
    "email": "anisha@vasandani.com",
    "password": "awesome",
    "password_confirmation": "awesome"
}
```

### Response

* Status: 200 OK
* Response Body:

```
{"users":
[{
    "id": 1,
    "name": "Anisha Vasandani",
    "email": "anisha@vasandani.com",
    "authentication_token": "awesome-value"
}
]}
```

To view the response, you can:

* run the rails app (rails s in your terminal) and visit http://localhost:3000/users.json , OR

* run the following command in your terminal:
curl -u user@example.com:password http://localhost:3000/users


### Questions?

* Email me if you're stuck: (mailto:anishavasandani@gmail.com) || 
* Check Stack Overflow(http://stackoverflow.com)

### Help me make it better

Please tell me how I can make the API better. If you have specific suggestions or if you found a bug (gasp), please use GitHub issues. You're welcome to fork & pull with improvements.


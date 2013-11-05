# TO-DO LIST APP

Hello there,

Welcome to the to-do-list app!

## Gems Used

1. devise -- for authentication 
2. acts_as_api -- for JSON responses
3. rails-spec -- for testing

It's my first time using #1 & #2, so bear with me! 

## API: JSON Response

This API accepts the following response:

```
{
    "name": "Anisha Vasandani",
    "email": "anisha@vasandani.com",
    "password": "awesome",
    "password_confirmation": "awesome"
}
```

and returns:

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

## Are you a Developer?

### Questions?

* Email me if you're stuck: (mailto:anishavasandani@gmail.com) || 
* Check Stack Overflow(http://stackoverflow.com)

### Help me make it better

Please tell me how I can make the API better. If you have specific suggestions or if you found a bug (gasp), please use GitHub issues. You're welcome to fork & pull with improvements.


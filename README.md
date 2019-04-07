# Awesome Forms [WIP]

In this project, you will see a complex web form implentation via different Web UI libraries or their extensions.

## Acceptance Criteria

1. You will implement a complex registration form.
1. Fields:
    1. Name. Required. At least 2 words. Maximum 100 chars. Numbers not allowed.
    1. Email. Required. Email validation. Server-side request[*](#e-mail-check-endpoint)(when input changed) for checking if it's already registered.
    1. Country Selection. Required. Select from a list with `id: label`. `id` value should sent to server
    1. City Selection. Optional. Select from a list with `id: label`. `id` value should sent to server. City selection should be shown after `country` selection.
    1. Photo. Optional. Image upload. Only jpg format should be allowed. File size should be less than 5MB.
    1. Password. 2 fields should be matched. At least 8 chars that includes one number, one uppercase letter, one lowercase letter.
1. Form output to server should be json in that format:
    ```json
    {
      "name": "Yan Chu",
      "email": "awesome@email.com",
      "country": "90",
      "city": "34",
      "photo": "http://to.an/image/url.jpg",
      "password": "Crazy-82"
    }
    ```
1. Form should be prefillable with same output json object.

### E-mail check endpoint

GET: https://somedomain.now.sh/emails/{email@address.com}

Will return `404` if this email is not registered. (Without response body)
Will return `200` if this email is registered. (Without response body)

## Contributing

1. Create folder inside `examples` folder
1. Create a `README.md` file in your example folder and define your solution.
1. Implement and push your example.
1. Your `package.json` file should have a `build` script and your demo application should be ready in `dist` folder after running this script.
1. Create your pull-request
1. After merging your pull-request, your demo will be live in `muratcorlu.github.io/awesome-forms/examples/{your-example-folder-name}`

RELEASE 0

2.
100 continue
200 ok
300 multiple choices
404 bad request
403 forbidden
500 internal server error

3. POST requests supply additional data from the client (browser) to the server in the message body. In contrast, GET requests include all required data in the URL. When the method is GET, all form data is encoded into the URL, appended to the action URL as query string parameters. With POST, form data appears within the message body of the HTTP request.
GET method should not be used when sending passwords or other sensitive information.
POST method used when sending passwords or other sensitive information.
4. Cookies are small files which are stored on a user's computer. They are designed to hold a modest amount of data specific to a particular client and website, and can be accessed either by the web server or the client computer. This allows the server to deliver a page tailored to a particular user, or the page itself can contain some script which is aware of the data in the cookie and so is able to carry information from one visit to the website (or related site) to the next.
When you request another page from the server, your browser sends the cookie back to the server. These files typically contain information about your visit to the web page, as well as any information you've volunteered, such as your name and interests.

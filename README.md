# BOOK REGISTRY

## Running application
* Open the start_application.rb pointout the APPLICATION_PATH

* Then change the host, post, useranme, and password in database.yml

* For initial run:
 
    ``` ./start_application.sh development first_run```

* For further run

    ``` ./start_application.sh development```
    
* Then in browser `http://localhost:8000` and enter the following credentials,
 ``` 
    email: user1@example.com
    pwd: test1234 
 ```
 * Then follow the steps what shown in screen
 
 ## Running test script
 
     ./start_application.sh development first_run
     
* Then Go and open the following file for output: 
    
    ```
    book_registry/tmp/rspec_output.html
    ```
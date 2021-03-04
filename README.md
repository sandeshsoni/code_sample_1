# Kwiq1

** Task - Calling 10 different APIs concurrently and fetching data from those API **

Create a module with 11 different functions with different timeouts(from 1 to 40 seconds). Only one function will have 40 seconds timeout. You can use :timer.sleep or whichever way you want.
These functions will output some sample JSON data and these functions will serve as API Endpoints for 11 different API calls.

Now you have to call these APIs concurrently with timeouts(30 seconds).

## Two Scenario:

### Success Scenario

All the Apis(below 30 seconds timeout) run successfully and list the datas of those function.(Remember each function has different timeouts)


### Error Scenario

Set 11th function timeout to be 40 seconds remaining all below 30 seconds. We have to set the max timeout to be 30 Seconds.
In that case, how will you successfully handle it by killing that failure timeout API alone and fetching the results of remaining Apis successfully?


#### Sandesh Soni, Pune, India

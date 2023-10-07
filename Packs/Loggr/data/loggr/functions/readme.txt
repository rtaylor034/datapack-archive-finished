GENERAL USE INFO

'log entry' is the standard log entry object:
{message: any, level: int, source: string, time:{day: int, seconds: float}}

logs are stored in {data -> logs}

log levels:
 -1 = active developer testing/debug message; should not be present in finished packs
 0 = non-erroneous very important admin message
 1 = potentially critical error 
 2 = warning or non-critical error
 3 = general message

 it is in a developers best interest to not overuse logging; logging unnecessary information is detrimental to the user aswell as the developer themselves
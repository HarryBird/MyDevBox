wrk.method = "POST"
wrk.body   = '{"size": 10}'
wrk.headers["Referer"] = "****"

function response(status, headers, body)  
      --print(body)  
      print(status)  
      --wrk.thread:stop()  
end  


# Movies

Stack: SwifyUI, MVVM, Swift Concurrency, PhotosUI, SDWebImageWebPCoder, SDWebImageAVIFCoder
------------------------------------------------------------------------------------------------------------------------
Getting data from Localhost(Server) with the data movies(imdb) API:
To download data from the local server, navigate to the MoviesAPIServer folder via the terminal (cd Developer/Movies/Movies/MoviesAPIServer) -> while in this folder, type swift run MoviesAPIServer & and then enter swift run BannerAPIServer &. This is if you need to run two local hosts at once (we recommend running two local hosts) -> wait for the full collection. To cancel one of the local hosts, you'll need to find the PID (process identifier) ​​holding the port -> enter the command lsof -i :8080 in the terminal (if your server is on 8080 by default). COMMAND PID USER ...
swift 17053 name ... should appear (for example, 17053 will be the process for this host). You can also find out using the command -> ps aux | grep swift (Example output would be user 15085 0.0 ... swift run MoviesAPIServer
user 15086 0.0 ... swift run BannerAPIServer). Once we've identified the process, we can terminate it with the command -> kill 15085. Or, if the first method doesn't work, we can force it -> kill -9 15085. Then, we can recheck whether the port is working -> lsof -i :8080
Next, we can check the data in the browser at http://localhost:8080/movies , http://localhost:8081/bannerMovies -> if successful, we can begin working.
------------------------------------------------------------------------------------------------------------------------
You can use any other service to download movies. You just need to replace the API with one that suits you and change the model to match your JSON.
------------------------------------------------------------------------------------------------------------------------
Description movies:
Using this app, you can find a movie you're interested in, view a synopsis, and add it to your favorites. You can also create a collection of your favorite movies for viewing.

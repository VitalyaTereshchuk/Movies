# Movies

Stack: SwifyUI, MVVM, Swift Concurrency, DI, PhotosUI, SDWebImageWebPCoder, SDWebImageAVIFCoder
------------------------------------------------------------------------------------------------------------------------------
Description movies:
Using this app, you can find a movie you're interested in, view a synopsis, and add it to your favorites. You can also create a collection of your favorite movies for viewing.
------------------------------------------------------------------------------------------------------------------------------
Instructions for receiving data through localhost
------------------------------------------------------------------------------------------------------------------------------
Getting data from Localhost(Server) with the data movies(imdb) API:
To download data from the local server, navigate to the MoviesAPIServer folder via the terminal (cd Developer/Movies/Movies/MoviesAPIServer) -> while in this folder, type swift run MoviesAPIServer & and then enter swift run BannerAPIServer &. This is if you need to run two local hosts at once (we recommend running two local hosts) -> wait for the full collection. To cancel one of the local hosts, you'll need to find the PID (process identifier) ​​holding the port -> enter the command lsof -i :8080 in the terminal (if your server is on 8080 by default). COMMAND PID USER ...
swift 17053 name ... should appear (for example, 17053 will be the process for this host). You can also find out using the command -> ps aux | grep swift (Example output would be user 15085 0.0 ... swift run MoviesAPIServer
user 15086 0.0 ... swift run BannerAPIServer). Once we've identified the process, we can terminate it with the command -> kill 15085. Or, if the first method doesn't work, we can force it -> kill -9 15085. Then, we can recheck whether the port is working -> lsof -i :8080
Next, we can check the data in the browser at http://localhost:8080/movies , http://localhost:8081/bannerMovies -> if successful, we can begin working.

You can use any other service to download movies. You just need to replace the API with one that suits you and change the model to match your JSON.

Previews 
------------------------------------------------------------------------------------------------------------------------------

<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 12 26 20" src="https://github.com/user-attachments/assets/c148323d-6368-4974-b693-69a5eb399bee" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 10 39 55-Photoroom" src="https://github.com/user-attachments/assets/e32fb3c1-033b-4037-848f-135f4fb8db15" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 12 31 26-Photoroom" src="https://github.com/user-attachments/assets/08de15dc-e18f-4bb6-a0ca-f7a4b5cc8cbf" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 12 34 28-Photoroom" src="https://github.com/user-attachments/assets/f4262b75-2037-4379-9722-b9d9b1b772ea" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 11 59 47-Photoroom" src="https://github.com/user-attachments/assets/a7493908-1a0a-4578-ad5d-f873d12b5708" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 11 50 41-Photoroom" src="https://github.com/user-attachments/assets/ea3c2e0b-f45f-4594-a278-819556687e3e" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 12 01 05-Photoroom" src="https://github.com/user-attachments/assets/6f4b7eba-1ec3-4489-9bf2-af051c807ac6" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 12 02 54-Photoroom" src="https://github.com/user-attachments/assets/b9e83df1-3398-4c3e-88e9-9c8223269315" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 12 07 09-Photoroom" src="https://github.com/user-attachments/assets/c95ce2df-af2f-44c6-8c48-b19da51b49f5" />
<img width="319" height="880" alt="Снимок экрана 2025-12-17 в 12 21 39-Photoroom" src="https://github.com/user-attachments/assets/799512b4-e1aa-4186-ae0a-e148c606eee2" />

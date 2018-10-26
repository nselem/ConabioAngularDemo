# ConabioAngularDemo
Probando angular apps en docker  

Desarrollé el contenedor nselem/conabioangulardemo, cada vez que actualizo github se actualiza el contenedor con build automático en DockerHub. Este github sólo contiene el codigo del directorio dist que se conecta al contenedor docker con angular. 
Para correr la aplicación hay que ejecutar:  
`docker run -p 3000:80 --rm nselem/conabioangulardemo`  
Para ver la aplicación hay que ir en el navegador a `localhost:3000`  

Pra trabajar en la producción de la spa (single page application) hice *my-angular-app*, otro github no conectado a docker.
Puedo pasarle el volumen dist para probar los avances, sin necesidad de mover  nada el Dockerfile.    
`docker run -p 3000:80 -v mydir/my-angular-app/:/usr/share/nginx/html/. --rm nselem/conabioangulardemo`  

Una vez que dist esté listo, lo copio al github de *conabioangulardemo* y docker hace el build automático.  

## Compilar applicaciones Angular usando docker  
Para compilar el directorio dist sin instalar angular estoy usando un docker seguí este tutorial [tutorial](https://jaxenter.com/build-and-test-angular-apps-using-docker-132371.html)  
Se puede correr new, build, etc.   
`docker run -u $(id -u) --rm -v "$PWD":/app trion/ng-cli ng new MyDemo  `  
`cd MyDemo`      
`docker run -u $(id -u) --rm -v "$PWD":/app trion/ng-cli ng build`     

Por alguna razón el puerto 4200 no me funcionó:    
`ocker run -u $(id -u) --rm -p 4200:4200 -v "$PWD":/app trion/ng-cli ng serve -host 0.0.0.0`  

así que seguí este tutorial y use el puerto 3000 [tutorial](https://medium.com/@DenysVuika/your-angular-apps-as-docker-containers-471f570a7f2  )
`docker run -p 3000:80 --rm my-angular-app`  
Este otro [tutorial](https://mherman.org/blog/dockerizing-an-angular-app/  ) me pareción interesante.     
  
## Single page application     
Todavía sigo entendiendo las sap, estoy leyendo estos links  
https://www.nascenia.com/create-single-page-application-using-angularjs/  
https://www.codeproject.com/Articles/1224654/Single-Page-Application-using-AngularJs-Tutorial  
https://scotch.io/tutorials/single-page-apps-with-angularjs-routing-and-templating  
https://codeburst.io/single-page-app-angularjs-e2fe3d838388

# ConabioAngularDemo
Testing angular app in docker

I created nselem/conabioangulardemo, an automated build in DockerHub  
##
docker run -p 3000:80 -v /home/nelly/GIT/ConioAngularDemo/code/dist/my-angular-app/:/usr/share/nginx/html/. --rm nselem/conabioangulardemo
##
docker run -p 3000:80 -v /home/nelly/GIT/ConioAngularDemo/code/dist/my-angular-app/:/usr/share/nginx/html/. --rm nselem/conabioangulardemo

## Angular application in docker  
To build angular apps in angular I found this [tutorial](https://jaxenter.com/build-and-test-angular-apps-using-docker-132371.html)  
Is a docker that allows to build angular applications  
`docker run -u $(id -u) --rm -v "$PWD":/app trion/ng-cli ng new MyDemo  `  
`cd MyDemo`    
`docker run -u $(id -u) --rm -v "$PWD":/app trion/ng-cli ng build`    

for some reason port 4200 didn't work for me:    
docker run -u $(id -u) --rm -p 4200:4200 -v "$PWD":/app trion/ng-cli ng serve -host 0.0.0.0

so I followed this other [tutorial](https://medium.com/@DenysVuika/your-angular-apps-as-docker-containers-471f570a7f2  )
And I was able to see my app at port 3000.   
`docker run -p 3000:80 --rm my-angular-app`  
I also consult how this other [tutorial](https://mherman.org/blog/dockerizing-an-angular-app/  ).   
  
## Single page application     
I is still have to transform the above app in a spa. Currenlty, I'm following this tutorials:    
https://www.nascenia.com/create-single-page-application-using-angularjs/  
https://www.codeproject.com/Articles/1224654/Single-Page-Application-using-AngularJs-Tutorial  
https://scotch.io/tutorials/single-page-apps-with-angularjs-routing-and-templating  
https://codeburst.io/single-page-app-angularjs-e2fe3d838388

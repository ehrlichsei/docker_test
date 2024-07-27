## build your heroku app

for example, my app named "cicd-test-2024"

```
heroku create cicd-test-2024
```

## build docker to heroku

specially for heroku  x86_64 architecture.
```
heroku container:login
docker build --platform linux/amd64 -t registry.heroku.com/cicd-test-2024/web .
docker push registry.heroku.com/cicd-test-2024/web
heroku container:release web --app cicd-test-2024
```

## run heroku
```
heroku open --app cicd-test-2024
```





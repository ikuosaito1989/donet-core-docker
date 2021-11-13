# dotnet-core-docker

## ref. https://github.com/dotnet/dotnet-docker/blob/main/samples/aspnetapp/Dockerfile

### Getting started
`docker build -t hogehoge -f Dockerfile .`  
`docker run --rm -p 5000:8081 hogehoge fugafuga`

### Configuration required to run in Google Cloud Run

```c#
public static IHostBuilder CreateHostBuilder(string[] args)
{
    var port = Environment.GetEnvironmentVariable("PORT") ?? "8080";
    var url = String.Concat("http://0.0.0.0:", port);

    return Host.CreateDefaultBuilder(args)
        .ConfigureWebHostDefaults(webBuilder => webBuilder.UseStartup<Startup>().UseUrls(url));
}
```

`docker tag {image name} gcr.io/{project name}/{image name}`  
`docker push gcr.io/{project name}/{image name}`

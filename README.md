## A very basic server that returns image data.

**GET Request**<br>
http://imagedata.herokuapp.com?url=https://identicons.github.com/etiennelem.png
```sh
$ curl 'http://imagedata.herokuapp.com?url=https://identicons.github.com/etiennelem.png'
# data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAaQAAAGkAQMAAABEgsN2AAAABlBMVEW2YsPw\n8PDyO0wTAAAAuElEQVR4nO3cvQ3CMBAGUBwoUrIBq2Q02CyrZAPSpUAJDdeA\nnCJ/QvL7WvvprrUtXzUtyLM6LQlFURRFla6m9Mll/1oURVEURVEURVEUdbxK\ncYv82r8WRVEURVEURVEUVbp6pFyuf9IhRVEURVEURVEUVbjq4qR6z+7rY0sz\nUyveYYfNO6QoiqIoiqIoiqKonIoTaz2jbt+DKMZYPv/MqGg375CiKIqiKIqi\nKIqiVij/YSmKoigq8gZmWHoFBlRo3gAAAABJRU5ErkJggg==
```

**JSONP**<br>
http://imagedata.herokuapp.com?url=https://identicons.github.com/etiennelem.png&callback=jsonp
```sh
$ curl 'http://imagedata.herokuapp.com?url=https://identicons.github.com/etiennelem.png&callback=jsonp'
# jsonp({"base64":"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAaQAAAGkAQMAAABEgsN2AAAABlBMVEW2YsPw\n8PDyO0wTAAAAuElEQVR4nO3cvQ3CMBAGUBwoUrIBq2Q02CyrZAPSpUAJDdeA\nnCJ/QvL7WvvprrUtXzUtyLM6LQlFURRFla6m9Mll/1oURVEURVEURVEUdbxK\ncYv82r8WRVEURVEURVEUVbp6pFyuf9IhRVEURVEURVEUVbjq4qR6z+7rY0sz\nUyveYYfNO6QoiqIoiqIoiqKonIoTaz2jbt+DKMZYPv/MqGg375CiKIqiKIqi\nKIqiVij/YSmKoigq8gZmWHoFBlRo3gAAAABJRU5ErkJggg==\n"})
```

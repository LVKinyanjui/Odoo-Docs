To build this project we employ a very haphazard process.

First we clone the repository into this current directory.
```git clone https://github.com/odoo/documentation.git```

Then we build and run the container
```docker compose up --build```

In another terminal window we open a shell in the running container (you may have to verify that it is actually running, ie. there were no errors in the build phase)
```docker exec -it odoo-server /bin/bash```

Now we install the dependencies and build the project
```
cd documentation\
pip install -r requirements.txt
make
```

Finally we open the file `documentation/_build/html/index.html` in a browser (since we mounted an external volume it will be found in the aforementioned location outside the container).


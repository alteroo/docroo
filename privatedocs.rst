Public Docs
========================================

By default Docroo protects documents and requires visitors to access documents
with an authenticated Google account. Sometimes you want to make all your
documentation public. Here is how to do this.

Serving Public Documentation
-------------------------------
To make documents available publicly edit the app.yaml file
and comment any references to `login:admin`:
It should look like this when you are done::

    ...
    - url: /
      static_files: _build/html/index.html
      upload: _build/html/index.html
      secure: always
      # login: admin

    - url: /
      static_dir: _build/html
      secure: always
      # login: admin

    - url: /(.*\.(gif|png|jpg|ico|js|css|html))
      static_files: /
      upload: _build/html/(.*\.(gif|png|jpg|ico|js|css|html))
      secure: always
      # login: admin
    ...


The next time you deploy your documentation it will only be accessible by 
persons with Google Accounts that are allowed to view your app engine account.

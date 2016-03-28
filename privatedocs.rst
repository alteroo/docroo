Private Docs
========================================

Docroo can be configured in such a way that it requires authentication to view
the documents

Protected Documentation
------------------------
To set up private/protected documentation edit the app.yaml file
and uncomment the 3 references to secure:
It should look like this when you are done::

    ...
    - url: /
      static_files: _build/html/index.html
      upload: _build/html/index.html
      secure: always
      login: admin

    - url: /
      static_dir: _build/html
      secure: always
      login: admin

    - url: /(.*\.(gif|png|jpg|ico|js|css|html))
      static_files: /
      upload: _build/html/(.*\.(gif|png|jpg|ico|js|css|html))
      secure: always
      login: admin
    ...


The next time you deploy your documentation it will only be accessible by 
persons with Google Accounts that are allowed to view your app engine account.

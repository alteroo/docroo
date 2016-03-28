# generate buildout reads buildout.cfg
virtualenv venv
source venv/bin/activate
curl -L downloads.buildout.org/2/bootstrap.py | python2.7
bin/buildout

#Then build the documentation as follows:
make html


#To deploy to the documentation site:
echo "in order to deploy your finished work run the following command:"
echo "   make docsite"

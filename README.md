# dataset-management
The Data Manager component is responsible for the management of Research Data Repositories and for providing mechanisms for searching and accessing all data available in the repositories. It uses a CKAN with ckanext-spatial, the Geospatial extension for CKAN.

CKAN Installation
------------

1. `cd ckan`
2. `cd contrib/docker`
3. run the following command: `sudo docker-compose up -d --build` # it will run all the needed containers
4. run the following command: `sudo docker exec -it ckan /usr/local/bin/ckan-paster --plugin=ckan sysadmin -c /etc/ckan/production.ini add ckanadmin`

Then you can open the ckan home at [http://localhost:5000.](http://localhost:5000.).

See the `CKAN Documentation <http://docs.ckan.org>`_ for installation instructions.





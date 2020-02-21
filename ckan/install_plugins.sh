#!/bin/bash
####
# Script to install ckanext-doi
# https://github.com/NaturalHistoryMuseum/ckanext-doi
#####

## Download and install ckanext-doi
cd $INSTALL_FOLDER/src && \
    git clone https://github.com/NaturalHistoryMuseum/ckanext-doi.git && \
    . $INSTALL_FOLDER/bin/activate && \
    cd $INSTALL_FOLDER/src/ckanext-doi && \
    pip install -r requirements.txt && \
    cd $INSTALL_FOLDER/src/ckanext-doi && \
    python setup.py develop

# Configuring production
sed -i '/ckan.plugins/s/$/ doi/' production.ini

sed -i '/Front-End Settings/ i\ckanext.doi.account_name = '$DOI_EXT_ACCOUNT_NAME'' production.ini
sed -i '/Front-End Settings/ i\ckanext.doi.account_password = '$DOI_EXT_ACCOUNT_PASSWORD'' production.ini
sed -i '/Front-End Settings/ i\ckanext.doi.prefix = '$DOI_EXT_PREFIX'' production.ini
sed -i '/Front-End Settings/ i\ckanext.doi.publisher = '$DOI_EXT_PUBLISHER'' production.ini
sed -i '/Front-End Settings/ i\ckanext.doi.test_mode = '$DOI_EXT_TEST_MODE'' production.ini

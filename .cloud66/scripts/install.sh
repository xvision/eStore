#!/bin/bash
FILE=/tmp/install_done

if [ -f $FILE ]
then
	echo "File $FILE exists..."
else
    cd $RAILS_STACK_PATH
    echo | bundle exec rake db:seed
    bundle exec rake spree_sample:load
    touch /tmp/install_done
fi
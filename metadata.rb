name 'pandaseq'
maintainer 'Eagle Genomics'
maintainer_email 'chef@eaglegenomics.com'
license 'apache2'
description 'Installs/Configures pandaseq'
long_description 'Installs/Configures pandaseq'
version '0.1.1'

source_url 'https://github.com/EagleGenomics-cookbooks/pandaseq'
issues_url 'https://github.com/EagleGenomics-cookbooks/pandaseq/issues'

depends 'locale-gen'

depends 'apt'
depends 'build-essential'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/pandaseq/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/pandaseq' if respond_to?(:source_url)

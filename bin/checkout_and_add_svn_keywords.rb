#!/usr/bin/ruby
#
# == Synopsis
#
# Checks out the source tree and adds svn:keywords property to source
# files.
#
#require 'find'
require 'fileutils'
include FileUtils::Verbose
#require 'ftools'
#require 'optparse'

# -- functions --------------------------------------------------------------

def do_system(command)
  puts command
  system(command) or raise($?)
end


# -- vars -------------------------------------------------------------------

svn_dir = "https://opi.svn.cvsdude.com/dealcurious/trunk/buyer-curious"
#svn_dir = "https://opi.svn.cvsdude.com/mdh/trunk/iaap"
#svn_dir = "https://opi.svn.cvsdude.com/mdh/trunk/iaap-data-extract"
#svn_dir = "https://opi.svn.cvsdude.com/mdh/trunk/iaap-desktop"
#svn_dir = "https://opi.svn.cvsdude.com/mdh/trunk/iaap-extractor"

#working_dir = "~/tmp/svn-keywords-workingdir"
working_dir = "svn-keywords-workingdir"


# -- processing -------------------------------------------------------------

rm_rf(working_dir)
mkdir(working_dir)
do_system("svn checkout #{svn_dir} #{working_dir}")
do_system("add_svn_keywords.rb #{working_dir}")
do_system("svn commit -m \"Added svn:keywords property\" #{working_dir}");
rm_rf(working_dir)


# -- end of file ------------------------------------------------------------

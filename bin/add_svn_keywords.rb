#!/usr/bin/ruby
#
# == Synopsis
#
# Adds svn:keywords property to source files.  Default to process the
# current directory.  Note: this does not commit the changes!
#
# == Usage
#
# ruby add_svn_keywords.rb [src_dir]
#
# src_dir::
# (Optional) The directory to process.
#
# == Examples
#
# ruby add_svn_keywords.rb ~/dev/xyzzy/src
#
require 'find'
require 'fileutils'
include FileUtils::Verbose
require 'ftools'
require 'optparse'


# -- functions --------------------------------------------------------------

def do_system(command)
  puts command
  system(command) or raise($?)
end


# -- vars -------------------------------------------------------------------

working_dir = "."
keywords = "Date Revision Author URL Id"
usage = "Usage: ruby add_svn_keywords.rb [src_dir]"


# -- options and svn checkout/update ----------------------------------------

opts = OptionParser.new
opts.parse(ARGV) rescue usage

unless ARGV[0].nil?
  working_dir = ARGV[0]
end


# -- svn properties ---------------------------------------------------------

num = 0
Find.find(working_dir) do |path|

  if FileTest.directory?(path)
    if File.basename(path) == '.svn'
      # allways skip the .svn dirs
      Find.prune
    else
      # don't bother setting properties on dirs
      next
    end
  else # must be a file...
    # quote spaces on paths that contain them (so svn wont fail)
    path.gsub!(/ /, '\ ')

    # add keywords property to some files...
    if File.file?(path) and path =~ /\.(ddl|bat|sh|css|dtd|el|groovy|gsp|html|java|js|jsp|properties|sql|txt|xml)$/
      keywordprop = `svn proplist --verbose #{path}`.to_a.find_all {|line| line.include? keywords  }
      if keywordprop.size == 0
        do_system("svn propset svn:keywords \"#{keywords}\" #{path}")
        num += 1
      end
    end
  end
end # find

# -- commit and cleanup -----------------------------------------------------

if num > 0
  #do_system("svn commit -m \"Added svn:keywords property\" #{working_dir}");
  puts "Added svn:keywords property to: #{num} files"
else
  puts "No changes"
end


# -- end of file ------------------------------------------------------------

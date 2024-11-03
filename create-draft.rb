#!/usr/bin/env ruby

require 'date'
require 'fileutils'

# Ensure _drafts directory exists
FileUtils.mkdir_p('_drafts')

# Get title from command line argument or prompt user
title = ARGV[0]
if title.nil? || title.empty?
  print "Enter post title: "
  title = gets.chomp
end

# Convert title to filename format
filename = title.downcase.gsub(/[^a-z0-9]+/, '-')
filepath = File.join('_drafts', "#{filename}.md")

# Create YAML front matter
content = <<~CONTENT
---
layout: post
title: "#{title}"
categories: []
tags: []
author: 
excerpt: 
published: false
---

Write your content here...
CONTENT

# Create the file
File.write(filepath, content)

puts "Draft created: #{filepath}"

# Optional: Open the file in default editor if specified
if ARGV.include?('--edit') || ARGV.include?('-e')
  if ENV['EDITOR']
    system("#{ENV['EDITOR']} #{filepath}")
  else
    puts "No default editor found. Please open #{filepath} manually."
  end
end

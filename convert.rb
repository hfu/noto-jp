%w{Sans Serif}.each {|k|
  Dir.glob("/Users/hfu/Downloads/Noto#{k}CJKjp-hinted/*.otf") {|path|
    t = File.basename(path, '.otf')
    print "rm -r #{t}\n" if File.directory?(t)
    print "mkdir #{t}\n"
    print "../node-fontnik/bin/build-glyphs /Users/hfu/Downloads/Noto#{k}CJKjp-hinted/#{t}.otf #{t}\n"
  }
}

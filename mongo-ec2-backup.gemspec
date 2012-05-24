# -*- encoding: utf-8 -*-

spec = Gem::Specification.new do |s|
  s.name    = 'mongo-ec2-backup'
  s.version = '0.0.4'
  s.summary = 'Snapshot your mongodb in the EC2 cloud via RAID EBS'

  s.author   = 'Pierre Baillet'
  s.email    = 'oct@fotopedia.com'
  s.homepage = 'https://github.com/octplane/mongo-ec2-consistent-backup'
  
  s.rubyforge_project = 'mongo-ec2-backup'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }  
  
  s.add_dependency 'aws-sdk'
  s.add_dependency('bson_ext', '1.3.1')
  s.add_dependency('bson', '1.3.1')
  s.add_dependency('mongo', '1.3.1')
  s.add_dependency 'trollop'
end

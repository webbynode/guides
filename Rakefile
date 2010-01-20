desc 'Publishes the output'
task :publish do
  exec "log=`git log --format=\"%s\" | head -1` && webby build && cd output && git add . && git commit -m \"$log\" && git push"
end
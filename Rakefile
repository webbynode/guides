desc 'Publishes the output'
task :publish do
  exec "webby build && cd output && git add . && git commit -m \"Latest changes\" && git push"
end
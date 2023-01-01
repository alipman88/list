lines = File.open('main.md').readlines

lines.reject! { |line| line.start_with?('x') }
lines.reject! { |line| line.start_with?('--') }

File.open('list.md', 'w') { |f| f.write(lines.join) }
`git add . ; git commit -mm ; git push origin main`

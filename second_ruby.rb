x = IO.read('file').split.reverse
x.each { |a| puts '%.4f' % Math.sqrt(a.to_f) }

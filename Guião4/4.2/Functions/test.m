bf = BloomFilter(100,40);
bf = bf.insert('mauro');
bf = bf.insert('marques');
bf = bf.insert('canhao');
bf = bf.insert('filho');
bf
bf.exists('huhu')
bf.exists('mauro')
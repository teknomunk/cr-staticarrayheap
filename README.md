# struct StaticArrayHeap(T,N)

Simple heap implemented on top of a StaticArray

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  staticarrayheap:
    github: teknomunk/cr-staticarrayheap
```

## Usage

```crystal
require "staticarrayheap"
```

TODO: Write usage instructions here
```crystal
q = StaticArrayHeap( Int32, 10 )

q.push(1)
q.push(10)
q.push(2)

3.times { 
	puts q.next
	q.pop
}
```

## Contributing

1. Fork it (<https://github.com/teknomunk/cr-staticarrayheap/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [teknomunk](https://github.com/teknomunk) teknomunk - creator, maintainer

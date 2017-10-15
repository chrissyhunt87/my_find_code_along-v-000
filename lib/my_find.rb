require 'pry'

def my_find(collection)
  if block_given?

    i = 0
    while i < collection.length
      if yield(collection[i])
        return yield(collection[i])
      end
      i += 1
    end

  else
    "No block given."
  end
end

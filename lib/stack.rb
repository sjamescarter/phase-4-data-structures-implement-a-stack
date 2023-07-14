class Stack
  def initialize(limit=nil)
    @stack= []
    @limit= limit
  end

  def push(value)
    if @limit
      @stack.length < @limit ? @stack.push(value) : raise_error
    else
      @stack.push(value)
    end
  end

  def pop
    @stack.pop
  end   

  def peek
    @stack[-1]
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def full?
    @stack.length == @limit ? true : false
  end

  def search(value)
    @stack.each do |v| 
      if v == value 
        return @stack.length - 1 - @stack.index(v)
      end
    end
    -1
  end

  private

  def raise_error
    raise Exception.new 'Stack Overflow'
  end
end
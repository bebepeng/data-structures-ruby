require 'stack'

describe Stack do
  let(:stack) { Stack.new }

  it 'can create an empty stack' do
    expect(stack.empty?).to eq true
    expect(stack.size).to eq 0
  end

  it 'can add an item to the stack' do
    stack.push('item 1')
    expect(stack.empty?).to eq false
    expect(stack.size).to eq 1
  end

  it 'can remove an item from the stack' do
    stack.push('item 1')
    stack.push('item 2')
    expect(stack.size).to eq 2
    expect(stack.pop).to eq 'item 2'
    expect(stack.size).to eq 1
  end

  it 'can iterate through the stack' do
    stack.push('item 1')
    stack.push('item 2')

    items = []
    stack.each { |item| items << item }

    expect(items).to eq ['item 2', 'item 1']
  end
end
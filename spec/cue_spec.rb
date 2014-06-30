require 'cue'

describe Cue do
  let(:cue) { Cue.new }

  it 'can create an empty queue' do
    expect(cue.empty?).to eq true
    expect(cue.size).to eq 0
  end

  it 'can add an item to the queue' do
    cue.enqueue('item 1')
    expect(cue.empty?).to eq false
    expect(cue.size).to eq 1
  end

  it 'can remove an item from the queue' do
    cue.enqueue('item 1')
    cue.enqueue('item 2')
    expect(cue.size).to eq 2
    expect(cue.dequeue).to eq 'item 1'
    expect(cue.size).to eq 1
  end

  it 'can iterate through the queue' do
    cue.enqueue('item 1')
    cue.enqueue('item 2')

    items = []
    cue.each { |item| items << item }

    expect(items).to eq ['item 1', 'item 2']
  end
end
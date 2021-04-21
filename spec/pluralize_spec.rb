# frozen_string_literal: false

require 'spec_helper'


describe(Jekyll::Pluralize) do
  let(:output) do
    pluralize(number, word, words)
  end

  context 'pluzalize with plural args and 2 items' do
    let(:word)    { 'post' }
    let(:words)   { 'posts' }
    let(:number)  { 2 }
    let(:content) { "{{ '#{number}' | pluralize: '#{word}', '#{words}' }}" }
    it 'produces the correct plural string' do
      expect(output).to eq(words)
    end
  end

  context 'not pluzalize with the plural args and 1 item' do
    let(:word)    { 'post' }
    let(:words)   { 'posts' }
    let(:number)  { 1 }
    let(:content) { "{{ '#{number}' | pluralize: '#{word}', '#{words}' }}" }
    it 'produces the correct singular string' do
      expect(output).to eq(word)
    end
  end
end

describe(Jekyll::Pluralize) do
  let(:output) do
    pluralize(number, word)
  end

  context 'pluzalize without plural args and 2 items' do
    let(:word)    { 'post' }
    let(:words)   { 'posts' }
    let(:number)  { 2 }
    let(:content) { "{{ '#{number}' | pluralize: '#{word}' }}" }
    it 'produces the correct plural string' do
      expect(output).to eq(words)
    end
  end

  context 'not pluzalize without plural args and 1 item' do
    let(:word)    { '1 post' }
    let(:number)  { 1 }
    let(:content) { "{{ '#{number}' | pluralize: '#{word}' }}" }
    it 'produces the correct singular' do
      expect(output).to eq(word)
    end
  end
end

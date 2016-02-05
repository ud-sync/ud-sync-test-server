require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader' if development?

get '/' do
  json({
    operations: [{
      id: '1',
      name: 'save',
      record_id: 'record-1',
      entity: 'Post',
      date: Time.now.iso8601
    }, {
      id: '2',
      name: 'save',
      record_id: 'record-2',
      entity: 'Comment',
      date: Time.now.iso8601
    }, {
      id: '3',
      name: 'delete',
      record_id: 'record-1',
      entity: 'Post',
      date: Time.now.iso8601
    }]
  })
end

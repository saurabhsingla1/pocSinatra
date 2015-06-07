require 'sinatra'
require 'active_record'
require "sinatra/activerecord"
require './models/post'
require 'erb'

get '/' do
	@posts = Post.all
	erb :index
end

get '/newpost' do
	erb :new
end

post '/submit' do
	@post = Post.new(params[:post])
	@post.save
	redirect '/'
end

get '/post/:id/edit' do
	@post = Post.find(params[:id])
	erb :edit
end

post '/submitedit' do
	@post = Post.update(params[:post][:id],params[:post])
	@post.save
	redirect '/'
end

get '/post/:id/delete' do
	@post = Post.delete(params[:id])
	redirect '/'
end
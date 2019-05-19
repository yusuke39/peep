# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.5.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Name Peep

## UserTable
|column|type|option|
|:---|:---|:---|
|nickname|string|null:false,unique|
|password|string|null:false|
|email|string|null:false,unique|
|last-name-kanji|string|null:false|
|first-name-kanji|string|null:fals|

### Association
-has_many:tweets
dependent::destroy -has_one:address


## AddressTable
|column|type|option|
|:---|:---|:---|
|zip-code|integer|null:false|
|prefecture|string|null:false|
|city|text|null:false|
|block-number|string|null:false|
|building-name|text||
|user_id|integer|foreign_key:true|

### Association
-has_one:user


## TweetTable
|column|type|option|
|:---|:---|:---|
|coment|text||

### Association
-belongs_to:user
-has_many:images


## ImageTable
|column|type|option|
|:---|:---|:---|
|image|text|foreign_key:true|

### Association
-belogs_to:tweet
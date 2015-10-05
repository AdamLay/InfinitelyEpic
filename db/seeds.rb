# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = Post.create([
                        { title: "Test post 1", body: "<div>Some test <b>html</b> body content.</div><div>Yay!</div>" },
                        { title: "Test Post the 2nd", body: "<div>Some test <b>html</b> body content.</div><div>Yay!</div>" }
                    ]);
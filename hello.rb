class Hello
  def self.call(env)
    [200,
     {'Content-Type' => 'text/html'},
     ['hello from rack!']
    ]
  end
end

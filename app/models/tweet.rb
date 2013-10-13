class Tweet
  def initialize(content, date, name, screen_name)
    @content = content
    @date = date
    @name = name
    @screen_name = '@' + screen_name
  end

  def content
    @content
  end

  def date
    @date
  end

  def name
    @name
  end

  def screen_name
    @screen_name
  end
end

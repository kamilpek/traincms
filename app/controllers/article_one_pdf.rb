class ArticleOnePdf < Prawn::Document
  include ActionView::Helpers::SanitizeHelper

  def initialize(article, hyperlink)
    super()
    @article = article
    @hyperlink = hyperlink
    article_header
    article_image
    article_intro
    article_content
    article_qr
  end

  def article_header
    font("app/assets/fonts/SourceSansPro-Bold.ttf", size: 30) do
      text "#{@article.title}"
    end
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 16) do
      text "Data utworzenia: #{@article.created_at.strftime("%d.%m.%Y")}."
      text "Autor: #{User.where(id:@article.user_id).pluck(:email).last}, Kategoria: #{Category.where(id:@article.category).pluck(:title).last}."
    end
  end

  def article_image
    move_down 10
    photo = @article.image.url if @article.image?
    image open(photo), :width => 400
  end

  def article_intro
    move_down 10
    font("app/assets/fonts/SourceSansPro-Bold.ttf", size: 14) do
      text "#{remove_html(@article.intro)}"
    end
  end

  def article_content
    move_down 10
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 14) do
      text "#{remove_html(@article.content)}"
    end
  end

  def article_qr
    move_down 10
    font("app/assets/fonts/SourceSansPro-Regular.ttf", size: 14) do
      text "Zeskanuj, aby przejść do artykułu na stronie:"
    end
    move_down 5
    qrcode = RQRCode::QRCode.new( @hyperlink.to_s, :size => 4, :level => :h)
    render_qr_code(qrcode, :dot=>2)
  end

  def remove_html(string)
    sanitize(string, :tags => {})
  end
end

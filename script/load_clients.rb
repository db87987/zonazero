#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
Client.transaction do
  (1..25).each do |i|
    Client.create(title: "Клиент #{i}", 
      logo1: "client-1.png", logo2: "client-3.png",
      point1: "– Разработка марочного наименования",
      point2: "– Проектирование товарного знака и фирменного стиля",
      point3: "– Программа продвижения",
      point4: "– Проектирование веб-сайта",
      point5: "– Создание брэндбука")
  end
end

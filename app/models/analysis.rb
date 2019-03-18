class Analysis

  TYPE  = %w[ГОСТ ТУ]
  MARKS = %w[ПЭТД ПЭТВ ПуГВ АПБ]

  class << self

    def get_type_produce(value)
      res = '-'
      TYPE.each do |t|
         if value.downcase.index(t.downcase).present? && value.downcase.index(t.downcase) > 0
           res = t
         end
      end
      res
    end

    def get_marks(value)
      res = '-'
      MARKS.each do |t|
        if value.downcase.index(t.downcase).present? && value.downcase.index(t.downcase) > 0
          res = t
        end
      end
      res
    end

  end
end
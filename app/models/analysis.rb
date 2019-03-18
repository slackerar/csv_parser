class Analysis

  MARKS = %w[ПЭТД ПЭТВ ПуГВ АПБ]
  COLORS = %w[красный черный синий белый желтый голубой зеленый коричневый оранжевый фиолетовый розовый серый бордовый]

  class << self

    def get_type_produce(value)
      result = value.match('ТУ(.[0-9\-_.]{1,20})*') unless value.match('ТУ(.[0-9\-_.]{1,20})*').nil?
      result = value.match('ГОСТ(.[0-9\-_.]{1,20})*') unless value.match('ГОСТ(.[0-9\-_.]{1,20})*').nil?
      result.nil? ? '-' : result
    end

    def get_marks(value)
      res = '-'
      MARKS.each do |t|
        if value.downcase.index(t.downcase).present? && value.downcase.index(t.downcase) >= 0
          res = t
        end
      end
      res
    end

    def get_prop(value)
      result = value.match('(([0-9]*[.,]*[0-9]*)[xх]([0-9]*[.,]*[0-9]*)[\/]*[0-9]*[.,]*[0-9]*)')
      result.nil? ? result = value.match('([0-9][.,][0-9]*)') : nil
      result.nil? ? '-' : result
    end

    def get_colors(value)
      res = ''
      COLORS.each do |t|
        if value.downcase.index(t.downcase).present? && value.downcase.index(t.downcase) > 0
          res.length > 0 ? res += ', ' + t : res = t
        end
      end
      res
    end

  end
end
class ParserFile

  class << self

    def read_file(file)
      return if file.blank?
      data = []
      CSV.foreach(file.path, col_sep: "\t", headers: true) do |row|
        res = []
        row.to_h.values.each do |v|
          res = v.split(";")
          res << Analysis.get_type_produce(v)
          res << Analysis.get_marks(v)
          res << Analysis.get_prop(v)
          res << Analysis.get_colors(v)
        end
        data << res
      end
      data
    end

  end
end
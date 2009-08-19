module VectorView
  module VectorViewHelper

    include Magick

      class MissingInfoError < StandardError
      end

      def convert_image
        raise MissingInfoError, 'Need to render something' unless @_rvg
        image = @_rvg.draw
        image.format = template.content_type.to_sym.to_s.upcase
        image.to_blob
      end

      def size(x_size, y_size)
        @_rvg_x_size = x_size
        @_rvg_y_size = y_size
      end

      def draw
        raise MissingInfoError, 'Need image size before rendering' unless @_rvg_x_size && @_rvg_y_size
        @_rvg = RVG.new(@_rvg_x_size, @_rvg_y_size) do |rvg|
          yield(rvg)
        end
      end
  end
end

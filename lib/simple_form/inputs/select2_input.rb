module SimpleForm
  module Inputs
    class Select2Input < CollectionSelectInput
      private

      def input_html_options
        html_options = {}
        html_options[:data] = {
          theme: options[:theme],
          source: options[:source],
          attribute: options[:attribute],
          identifier: options[:identifier],
          placeholder: options[:placeholder]
        }
        html_options[:multiple] = true if options[:multiple]

        super.deep_merge(
          html_options
        )
      end
    end
  end
end

module SendBird
  class SendBirdObject
    @@permanent_attributes = Set.new([:id])

    def initialize(id = nil)
      @unsaved_values = Set.new

      case self.class.name
        when 'SendBird::User'
          @permitted_params = [:nickname, :profile_url, :issue_access_token]
        when 'SendBird::Channel'
          @permitted_params = [:name, :cover_url, :data, :is_distinct]
      end

      @values = {}
      @values[:id] = id if id
    end

    def [](k)
      @values[k.to_sym]
    end

    def []=(k, v)
      send(:"#{k}=", v)
    end

    def inspect
      id_string = (self.respond_to?(:id) && !self.id.nil?) ? " id=#{self.id}" : ""
      "#<#{self.class}:0x#{self.object_id.to_s(16)}#{id_string}> JSON: " + JSON.pretty_generate(@values)
    end

    def self.initialize_from(id, values)
      self.new(id).initialize_from(values)
    end

    def initialize_from(values)
      update_attributes(values)
      self
    end

    def update_attributes(values, method_options = {})
      values.each do |k, v|
        add_accessors([k], values)
        @values[k] = v
      end
    end

    def add_accessors(keys, values)
      metaclass.instance_eval do
        keys.each do |k|
          k_sym_method = :"#{k}="
          define_method(k) { @values[k] }
          define_method(k_sym_method) do |v|
            @values[k] = v
          end
        end
      end
    end

    def serialize_params
      permitted_hash = {}

      @values.each do |k, v|
        permitted_hash[k] = v if @permitted_params.include?(k.to_sym)
      end

      permitted_hash
    end

    protected

    def metaclass
      class << self; self; end
    end
  end
end

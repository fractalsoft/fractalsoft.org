# Extension to update exist objects or create them
module CreateOrUpdateByKeysExtension
  def create_or_update_by_keys(keys, params)
    object = find_by_keys(keys, params)
    if object
      params = update_params_with_nils(object, params)
      object.update(params)
      object
    else
      create(params)
    end
  end

  private

  def find_by_key(key, params)
    value = params[key]
    value.presence && find_by("#{key} = ?", value)
  end

  def find_by_keys(keys, params)
    keys.each_with_object([]) do |key|
      object = find_by_key(key, params)
      return object if object
    end
    nil
  end

  def update_params_with_nils(object, params)
    attributes = object.attribute_names.map(&:to_sym)
    skip_keys = %i(id slug created_at updated_at string text) + params.keys
    skip_keys.each { |key| attributes.delete(key) }
    nil_hash = Hash[attributes.zip([nil] * attributes.count)]
    nil_hash.merge(params)
  end
end

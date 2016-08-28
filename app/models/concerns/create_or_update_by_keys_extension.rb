# Extension to update exist objects or create them
module CreateOrUpdateByKeysExtension
  def create_or_update_by_keys(keys, params)
    object = find_by_keys(keys, params)
    object ? object.update(params) && object : create(params)
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
end

# Extension to update exist objects or create them
module CreateOrUpdateByKeysExtension
  def create_or_update_by_keys(keys, params)
    object = nil
    keys.each do |key|
      object = find_by("#{key} = ?", params[key]) if params[key].present?
      break if object
    end
    object ? object.update(params) && object : create(params)
  end
end

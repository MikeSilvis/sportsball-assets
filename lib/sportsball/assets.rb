require "sportsball/assets/version"

module Sportsball
  module Assets
    ASSET_STRINGS = [
      'ASSET_STRING_1',
      'ASSET_STRING_2',
      'ASSET_STRING_3'
    ]
    ASSET_HASHES = ASSET_STRINGS.map do |asset_string|
      Digest::MD5.hexdigest(asset_string)
    end

    def self.encode_path(path)
      "#{path}-#{ASSET_HASHES.last}.png"
    end

    def self.decode_path(path)
      path.tap do |updated_path|
        ASSET_HASHES.each do |asset_hash|
          updated_path.gsub!("-#{asset_hash}", '')
        end
      end
    end
  end
end

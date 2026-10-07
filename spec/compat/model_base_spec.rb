require 'spec_helper'

# compat.rb adds [] and friends to Daily::ApiModelBase. If a future regen
# made a model that does not inherit from it, Hash-style reads would break
# for that model. This guard catches that.
describe 'Every generated model' do
  models = Daily.constants.map { |c| Daily.const_get(c) }
                .select { |k| k.is_a?(Class) && k.respond_to?(:openapi_types) }

  it 'finds a sensible number of models' do
    expect(models.size).to be > 100
  end

  it 'inherits from Daily::ApiModelBase' do
    outliers = models.reject { |k| k < Daily::ApiModelBase }
    expect(outliers).to eq([])
  end

  it 'answers to Hash-style reads' do
    missing = models.select do |k|
      %i[[] fetch key? dig to_h to_json].any? { |m| !k.method_defined?(m) }
    end
    expect(missing).to eq([])
  end
end

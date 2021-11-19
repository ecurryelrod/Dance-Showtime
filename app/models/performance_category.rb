class PerformanceCategory < ApplicationRecord
  belongs_to :performance
  belongs_to :category
  # not sure this association working properly - tested in rails c sandbox and worked for some associations but not all...
end

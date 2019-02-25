class Project < ApplicationRecord

	# has_one_attached :project_file
	has_many_attached :files

	geocoded_by :full_address
	after_validation :geocode

  def project_file_url
    if self.project_file.attachment
      self.project_file.attachment.service_url
    end
  end


	def full_address
		[address, city, state].compact.join(", ")
	end


end

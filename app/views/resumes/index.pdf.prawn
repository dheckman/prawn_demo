pdf.font "Helvetica"
@resumes.each do |r|
  pdf.text r.title
  pdf.text r.label
end


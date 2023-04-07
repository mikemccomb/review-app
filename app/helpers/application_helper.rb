module ApplicationHelper
  def category_name
    @category_name = Category.find_by(id: params[:category_id]).name
  end

  def subject_name
    @subject_name = Subject.find_by(id: params[:subject_id]).name
  end

  def average_rating
    rating = Entry.all.where(subject_id: params(:subject_id))
    subject.average_rating = rating.average(:rating)
    return subject.average_rating
  end
end

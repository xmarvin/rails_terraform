class NoteWorker
  include Sidekiq::Worker

  def perform(id)
    note = Note.find(id)
    note.text = note.text + " [processed in sidekiq]"
    note.save!
  end
end
class CreateShowtimes < ActiveRecord::Migration
  def change
    create_table :showtimes do |t|
      t.string :movie_id
      t.string :theater_id
      t.string :screen_time
    end
  end
end

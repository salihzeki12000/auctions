require "rails_helper"

include RoomsHelper

RSpec.feature "rooms#show", type: :feature do

  context "when somebody post a new bid", js: true do
    scenario "the list of bids should refresh automatically" do
      room = create :room, expires_at: 50.seconds.from_now
      user = login_as_user
      bid_1 = create :bid, user: user, room: room
      expect(Bid.count).to be 1

      visit room_path(room)
      expect(page).to have_xpath "//span[@class='expiration-time-room text-red blinking']"
      within "#bids_table" do
        within "#bid_#{bid_1.id}" do
          expect(page).to have_content bid_1.id
        end
      end
      expect(page).to_not have_selector "#bid_#{bid_1.id + 1}"

      bid_2 = Bid.new user_id: user.id, room_id: room.id, user_email: user.email, amount: room.minimal_allowed_bid
      Bid.post_bid(bid_2, user)
      bid_2.send_pusher_event

      within "#bids_table" do
        within "#bid_#{bid_2.id}" do
          expect(page).to have_content bid_2.id
        end
      end
      expect(page).to have_xpath "//span[@class='expiration-time-room text-green']"
      expect(page).to_not have_xpath "//span[@class='expiration-time-room text-red blinking']"
      expect(Bid.count).to be 2

    end
  end

end

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome do |option|
    %w[headless no-sandbox disable-setuid-sandbox disable-dev-shm-usage disable-infobars
      disable-gpu ignore-certificate-errors disable-popup-blocking
      window-size=1280,1024 disable-features=VizDisplayCompositor].each do |a|
      option.add_argument(a)
    end
  end
end

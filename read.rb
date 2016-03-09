require './Mfrc522'

chip = Mfrc522.new
loop do
  picc_req_status = chip.picc_request(Mfrc522::PICC_REQA)
  p "PICC Request Status: #{picc_req_status}"

  picc_fetch_uid_status, uid = chip.picc_fetch_uid_sak

  p "PICC fetch UID status: #{picc_fetch_uid_status}"
  p "UID: #{uid}"
  sleep 2
end

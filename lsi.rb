current_lsidays = 0
current_lsi = 0

SCHEDULER.every '10s' do
  last_lsidays = current_lsidays
  last_lsi     = current_lsi
  current_lsidays = rand(10)
  current_lsi     = rand(5)

  send_event('lsidays', { current: current_lsidays, last: last_lsidays })
  send_event('lsi', { current: current_lsi, last: last_lsi })
end
json.items do
  json.array!(@items) do |item|
    json.de item.de
    json.trxn item.trxn
    json.pl item.pl
    json.ru item.ru
    json.en item.en
  end
end

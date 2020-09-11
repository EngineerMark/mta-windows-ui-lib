function getTableName(tbl)
    for k, v in pairs(_G) do
      if v == tbl then
            return k
      end
    end
    return nil
end

Sub marketanalysis()
'holds sum value of stock volume
stockVolume = 0

'holds iterations to print total values and information
output_count = 2

For Each ws In Worksheets

    output_count = 2

    row_end = ws.Cells(2, 1).End(xlDown).Row
    
    For Row = 2 To row_end

        current_stock = ws.Cells(Row, 1).Value

        next_stock = ws.Cells(Row + 1, 1).Value

        stockVolume = ws.Cells(Row, 7).Value + stockVolume

        If current_stock <> next_stock Then
        
            'prints stockVolume
            ws.Cells(output_count, 11).Value = stockVolume

            'prints current_stock
            ws.Cells(output_count, 10).Value = current_stock

            
            output_count = output_count + 1
            stockVolume = 0
            
        End If


    Next Row

    
Next ws

End Sub



••••ˇˇˇˇ
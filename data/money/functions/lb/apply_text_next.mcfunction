data modify storage money:board text.extra append value {"text":"\n"}
data modify storage money:board text.extra append from storage money:board lines[0]
data remove storage money:board lines[0]
function money:lb/apply_text_lines

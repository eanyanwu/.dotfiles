# Formatted Date
date_formatted=$(date +'%A %B %d %Y :: %T')

# Volume

# Battery
battery=$(acpi | cut -c 12-)
# Wifi 

 echo "$date_formatted"

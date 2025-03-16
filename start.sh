#!/bin/sh


python3 negan.py &

# Chạy proxy scanner
python3 prxscan.py -l list.txt &


# Đếm ngược 30 ngày
total_seconds=2592000  # 30 ngày = 2.592.000 giây
while [ $total_seconds -gt 0 ]; do
    hours=$((total_seconds / 3600))
    minutes=$(( (total_seconds % 3600) / 60 ))
    seconds=$((total_seconds % 60))
    printf "Thời gian còn lại: %02d giờ %02d phút %02d giây\n" $hours $minutes $seconds
    sleep 1
    total_seconds=$((total_seconds - 1))
done


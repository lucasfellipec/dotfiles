#!/bin/bash

TARGET_DIR="/Users/lucasfellipe/Movies/courses/KodeKloud/CKA Certification Course  Certified Kubernetes Administrator/1 - Introduction"

find "$TARGET_DIR" -type f -name "*.mkv" | while read -r video_file; do
    base_name=$(basename "$video_file" .mkv)
    dir_name=$(dirname "$video_file")

    echo $base_name
    echo $dir_name

    output_file="${dir_name}/${base_name}.en.srt"

    ffmpeg -i "$video_file" -map 1:s:1 "$output_file"

    if [ $? -eq 0 ]; then
        echo "Extracted subtitles from '$video_file' to '$output_file'"
    else
        echo "Failed to extract subtitles from '$video_file'"
    fi
done


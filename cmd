
ffmpeg -i mobile_2060p.mp4 \
  -c:v libx264 -profile:v high -level 4.1 -pix_fmt yuv420p \
  -crf 23 -preset veryslow \
  -vf "scale=1080:1920:flags=lanczos" \
  -color_primaries bt709 -color_trc bt709 -colorspace bt709 \
  -an -movflags +faststart mobile_encoded.mp4

ffmpeg -i pc_2060p.mp4 \
  -c:v libx264 -profile:v high -level 4.1 -pix_fmt yuv420p \
  -crf 23 -preset veryslow \
  -vf "scale=1920:1080:flags=lanczos" \
  -color_primaries bt709 -color_trc bt709 -colorspace bt709 \
  -an -movflags +faststart pc_encoded.mp4

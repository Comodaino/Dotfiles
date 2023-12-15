
case $(brightnessctl g) in 
  255)  brightnessctl set 64;;
  64) brightnessctl set 128;;
  128) brightnessctl set 192;;
  192) brightnessctl set 255;;
esac

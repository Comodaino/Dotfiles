
case $(brightnessctl g) in 
  50)  brightnessctl set 100;;
  100) brightnessctl set 150;;
  150) brightnessctl set 200;;
  200) brightnessctl set 255;;
  255) brightnessctl set 50;;
esac

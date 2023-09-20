case $(cat ~/.config/hypr/monitor.conf | grep '#' | cut -b 2) in
  r) cp ~/.config/hypr/left ~/.config/hypr/monitor.conf;
    export MONITOR_MODE='l';;
  m) cp ~/.config/hypr/right ~/.config/hypr/monitor.conf;
    export MONITOR_MODE="r";;
  l) cp ~/.config/hypr/mirrored ~/.config/hypr/monitor.conf;
    export MONITOR_MODE="m";;
esac

export MONITOR_MODE;



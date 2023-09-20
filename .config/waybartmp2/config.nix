_: {
  mainBar = {
    position = "top";
    layer = "top";
    height = 16;
    margin-top = 0;
    margin-bottom = 0;
    margin-left = 0;
    margin-right = 0;
    modules-left = ["custom/launcher" "custom/playerctl" "custom/playerlabel"];
    modules-center = [
      "wlr/workspaces"
      # "cpu"
      # "memory"
      # "disk"
    ];
    modules-right = [
      "tray"
      "pulseaudio"
      "clock"
      # "custom/randwall"
      # "network"
    ];
    clock = {
      format = "󱑍 {:%H:%M}";
      tooltip = "true";
      tooltip-format = ''
        <big>{:%Y %B}</big>
        <tt><small>{calendar}</small></tt>'';
      format-alt = " {:%d/%m}";
    };

    "wlr/workspaces" = {
      active-only = false;
      all-outputs = false;
      disable-scroll = false;
      on-scroll-up = "hyprctl dispatch workspace e-1";
      on-scroll-down = "hyprctl dispatch workspace e+1";
      format = "{icon}";
      on-click = "activate";
      show-special = "false";
      sort-by-number = true;
      persistent_workspaces = {
        "*" = 10;
      };
    };

    "custom/playerctl" = {
      format = "{icon}";
      return-type = "json";
      max-length = 25;
      exec = ''
        playerctl -a metadata --format '{"text": "{{artist}} - {{markup_escape(title)}}", "tooltip": "{{playerName}} : {{markup_escape(title)}}", "alt": "{{status}}", "class": "{{status}}"}' -F'';
      on-click-middle = "playerctl play-pause";
      on-click = "playerctl previous";
      on-click-right = "playerctl next";
      format-icons = {
        Playing = "<span foreground='#6791eb'>󰓇 </span>";
        Paused = "<span foreground='#cdd6f4'>󰓇 </span>";
      };
    };

    "custom/playerlabel" = {
      format = "<span>{}</span>";
      return-type = "json";
      max-length = 25;
      exec = ''
        playerctl -a metadata --format '{"text": "{{artist}} - {{markup_escape(title)}}", "tooltip": "{{playerName}} : {{markup_escape(title)}}", "alt": "{{status}}", "class": "{{status}}"}' -F'';
      on-click-middle = "playerctl play-pause";
      on-click = "playerctl previous";
      on-click-right = "playerctl next";
      format-icons = {
        Playing = "<span foreground='#6791eb'>󰓇 </span>";
        Paused = "<span foreground='#cdd6f4'>󰓇 </span>";
      };
    };

    battery = {
      states = {
        good = 95;
        warning = 30;
        critical = 15;
      };
      format = "{icon}  {capacity}%";
      format-charging = "{capacity}% ";
      format-plugged = "{capacity}% ";
      format-alt = "{icon} {time}";
      # "format-good"= "", # An empty format will hide the module
      # "format-full"= "";
      format-icons = ["" "" "" "" ""];
    };

    memory = {
      format = "󰍛 {}%";
      format-alt = "󰍛 {used}/{total} GiB";
      interval = 30;
    };

    cpu = {
      format = "󰻠 {usage}%";
      format-alt = "󰻠 {avg_frequency} GHz";
      interval = 10;
    };

    disk = {
      format = "󰋊 {}%";
      format-alt = "󰋊 {used}/{total} GiB";
      interval = 30;
      path = "/";
    };

    network = {
      format-wifi = "󰤨";
      format-ethernet = " {ifname}: Aesthetic";
      format-linked = " {ifname} (No IP)";
      format-disconnected = "󰤭";
      format-alt = " {ifname}: {ipaddr}/{cidr}";
      tooltip-format = "{essid}";
      on-click-right = "nm-connection-editor";
    };

    tray = {
      icon-size = 18;
      spacing = 10;
    };

    backlight = {
      # "device"= "acpi_video1";
      format = "{icon} {percent}%";
      format-icons = ["" "" "" "" "" "" "" "" ""];
      #	"on-scroll-up"=;
      #	"on-scroll-down"=;
    };

    pulseaudio = {
      format = "{icon} {volume}%";
      format-muted = "";
      format-icons = {default = ["" "" ""];};
      on-click = "bash ~/.scripts/volume mute";
      on-scroll-up = "bash ~/.scripts/volume up";
      on-scroll-down = "bash ~/.scripts/volume down";
      scroll-step = 5;
      on-click-right = "pavucontrol";
      tooltip = false;
    };
    "custom/randwall" = {
      format = "󰏘";
      on-click = "bash $HOME/.config/hypr/randwall.sh";
      on-click-right = "bash $HOME/.config/hypr/wall.sh";
    };
    "custom/launcher" = {
      format = "";
      # on-click = "notify-send -t 1 'swww' '1' & ~/.config/hypr/scripts/wall";
      tooltip = false;
    };

    "custom/wf-recorder" = {
      format = "{}";
      interval = "once";
      exec = "echo ''";
      tooltip = "false";
      exec-if = "pgrep 'wf-recorder'";
      on-click = "exec ./scripts/wlrecord.sh";
      signal = 8;
    };

    "custom/hyprpicker" = {
      format = "󰈋";
      on-click = "hyprpicker -a -f hex";
      on-click-right = "hyprpicker -a -f rgb";
    };
  };
}

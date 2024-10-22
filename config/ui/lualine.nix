{
  plugins.lualine = {
    enable = true;
    alwaysDivideMiddle = true;
    globalstatus = true;
    # # theme = "auto";
    componentSeparators = {
      left = "|";
      right = "|";
    };
    # sectionSeparators = {
    #   left = ""; # █ 
    #   right = ""; # █ 
    # };
    # sections = {
    #   lualine_a = [
    #     {
    #       name = "mode";
    #       separator = {
    #         left = "";
    #       };
    #       # right_padding = 2;
    #     }
    #   ];
    #   lualine_b = [
    #     {
    #       name = "branch";
    #       icon = "";
    #     }
    #     "diff"
    #     "diagnostics"
    #     "filename"
    #   ];
    #   lualine_c = [];
    #   lualine_x = [];
    #   lualine_y = ["filetype" "progress"];
    #   lualine_z = [
    #     "location"
    #     # {separator = {right = "";};}
    #     # {left_padding = 2;}
    #   ];
    # };
    # # inactive_sections = {
    # #   lualine_a = ["filename"];
    # #   lualine_b = [];
    # #   lualine_c = [];
    # #   lualine_x = [];
    # #   lualine_y = [];
    # #   lualine_z = ["location"];
    # # };
  };
}

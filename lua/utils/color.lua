local color_utils = {}

local function hex_to_rgb(hex)
  -- Remove '#' if present
  hex = hex:gsub("#", "")

  -- Convert hex to RGB values
  local r = tonumber(hex:sub(1, 2), 16)
  local g = tonumber(hex:sub(3, 4), 16)
  local b = tonumber(hex:sub(5, 6), 16)

  return r, g, b
end

function color_utils.is_bright_hex(hex)
  local r, g, b = hex_to_rgb(hex)
  -- Calculate luminance
  local luminance = 0.2126 * r + 0.7152 * g + 0.0722 * b

  -- Threshold for dark/bright
  return luminance >= 128
end

return color_utils

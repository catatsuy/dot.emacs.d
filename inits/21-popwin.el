(require 'popwin)

(setq display-buffer-function 'popwin:display-buffer)
(setq popwin:popup-window-position 'bottom)

(push '("*Occur*") popwin:special-display-config)

;; extends
; only the `constructor` method, not every method name of the class
(class_body
  (method_definition
    (property_identifier) @fused_js.constructor
    (#eq? @fused_js.constructor "constructor")
    (#set! "priority" 105)))

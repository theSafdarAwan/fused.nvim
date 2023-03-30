;; extends
(unit) @css.unit
(keyword_query) @css.query
(property_name) @css.property
(plain_value) @css.value
(id_selector (id_name) @css.id)
(selectors (tag_name) @css.tag)
(selectors (class_selector) @css.class (#set! "priority" 105))
"and" @css.keyword

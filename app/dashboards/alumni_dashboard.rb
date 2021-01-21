require "administrate/base_dashboard"

class AlumniDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    articles: Field::HasMany,
    candidacies: Field::HasMany,
    projects: Field::HasMany,
    photo_attachment: Field::HasOne,
    photo_blob: Field::HasOne,
    taggings: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tagging"),
    base_tags: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tag"),
    language_back_tag_taggings: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tagging"),
    language_back_tags: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tag"),
    language_front_tag_taggings: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tagging"),
    language_front_tags: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tag"),
    language_ux_ui_tag_taggings: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tagging"),
    language_ux_ui_tags: Field::HasMany.with_options(class_name: "ActsAsTaggableOn::Tag"),
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    is_mentor: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    about: Field::Text,
    city: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  articles
  candidacies
  projects
  photo_attachment
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  articles
  candidacies
  projects
  photo_attachment
  photo_blob
  taggings
  base_tags
  language_back_tag_taggings
  language_back_tags
  language_front_tag_taggings
  language_front_tags
  language_ux_ui_tag_taggings
  language_ux_ui_tags
  id
  email
  encrypted_password
  reset_password_token
  reset_password_sent_at
  remember_created_at
  first_name
  last_name
  is_mentor
  created_at
  updated_at
  about
  city
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  articles
  candidacies
  projects
  photo_attachment
  photo_blob
  taggings
  base_tags
  language_back_tag_taggings
  language_back_tags
  language_front_tag_taggings
  language_front_tags
  language_ux_ui_tag_taggings
  language_ux_ui_tags
  email
  encrypted_password
  reset_password_token
  reset_password_sent_at
  remember_created_at
  first_name
  last_name
  is_mentor
  about
  city
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how alumnis are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(alumni)
  #   "Alumni ##{alumni.id}"
  # end
end

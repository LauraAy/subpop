FactoryGirl.define do

  factory :evidence do
    format 'bookplate_label'
    book
  end

  factory :evidence_complete, class: Evidence do
    book
    format                'other'
    format_other          'Ribbon'
    content_types         [ ContentType.find_or_create_by(name: 'Armorial') ]
    location_in_book      'page_number'
    location_in_book_page '5'
    transcription         'Text of transcription'
    year_start            1820
    year_end              1828
    date_narrative        "c. 1820 - 1828"
    where                 "Philadelphia"
    comments              "Text comments"
    photo

    association :publication_data, factory: :publication_data
  end

  factory :evidence_on_flickr, class: Evidence do
    format 'bookplate_label'
    year_when 1874
    location_in_book 'front_endleaf'

    book
  end
end
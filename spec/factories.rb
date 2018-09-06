FactoryBot.define do
  factory :course do
    name {"Rails"}
    detail {"Ruby on Rails"}
    category {"practice"}
  end

  factory :user_report do
    title {"Huyen Cherry"}
    content {"Huyen Cherry Xinh Dep"}
    user {}
    user_subject {}
  end

  factory :user do
    name {"HC"}
    display_name {"HCXD"}
    phone {"099"}
    avatar {"HCXD"}
    address {"HT-HN"}
    role {"Admin"}
    email {"hc@gmail.com"}
    password {123456}
  end

  factory :subject do
    name {"Rails"}
    detail {"Rails Girl"}
    status {0}
    category {0}
  end

  factory :user_subject do
    progress {10}
    status {10}
    start_date {"2018-03-03"}
    end_date {"2018-03-04"}
  end

  factory :user_course do
    progress {10}
    start_date {"2018-03-03"}
    end_date {"2018-03-04"}
  end
end

require 'bundler'
Bundler.require

app = Helios::Application.new {
        service :data, model: Dir['*.xcdatamodel*'].first if Dir['*.xcdatamodel*'].any?
        service :push_notification, apn_certificate: './cert/apple_push_notification.pem', apn_environment: 'development'
        service :in_app_purchase
        service :passbook
      }

run app

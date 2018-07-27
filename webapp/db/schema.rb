# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180726140244) do

  create_table "master_additionalpoints", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "index"
    t.string "name"
    t.integer "allowance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_family_allowances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "index"
    t.string "name"
    t.integer "allowance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "index"
    t.string "name"
    t.integer "allowance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_metropolitions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "index"
    t.string "name"
    t.integer "allowance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_positions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "index"
    t.integer "function_allowance"
    t.integer "duty_allowance"
    t.integer "deemded_overtime"
    t.integer "standard_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_standards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "index"
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "save_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_info_id"
    t.integer "index"
    t.integer "year"
    t.integer "month"
    t.integer "basic_age"
    t.integer "functional_level"
    t.integer "normal_working_hour_allowance"
    t.integer "metropolitan_allowance"
    t.integer "basic_pay"
    t.integer "hourly_wage"
    t.integer "extra_work_hourly_wage"
    t.integer "extra_work_time"
    t.integer "overtime_pay"
    t.integer "family_allowance"
    t.integer "face_wage"
    t.integer "difference"
    t.integer "promotion_rate"
    t.integer "hourly_difference"
    t.integer "ratio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_infos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "master_position_id"
    t.integer "master_job_id"
    t.integer "index"
    t.string "name"
    t.integer "birth"
    t.integer "age"
    t.integer "ageP"
    t.integer "age_adjustment"
    t.integer "insurance"
    t.string "address"
    t.integer "partner_num"
    t.integer "family_num"
    t.integer "shorter_working_hour_ch"
    t.integer "Secondhalf_salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_points", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "index"
    t.integer "master_additionalpoint_id"
    t.integer "value"
    t.string "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

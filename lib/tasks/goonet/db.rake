namespace :goonet do

  task :set_custom_config do
    # save current vars
    @original_config = {
      env_schema: ENV['SCHEMA'],
      config: Rails.application.config.dup
    }

    # set config variables for custom database
    ENV['SCHEMA'] = 'db/goonet/schema.rb'
    Rails.application.config.paths['db'] = ['db/goonet']
    Rails.application.config.paths['db/migrate'] = ['db/goonet/migrate']
    Rails.application.config.paths['db/seeds.rb'] = ['db/goonet/seeds.rb']
    Rails.application.config.paths['config/database'] = ['config/goonet/database.yml']
  end

  task :revert_to_original_config do
    # reset config variables to original values
    ENV['SCHEMA'] = @original_config[:env_schema]
    Rails.application.config = @original_config[:config]
  end

  namespace :db do |ns|

    # 上記の各タスクを実行する前に、goonet専用の設定を読み込み
    # (goonet用のDB設定を読み込む前に、設定を初期化してから上書き設定)
    #
    ns.tasks.each do |task|
      task.enhance ['goonet:set_custom_config'] do
        Rake::Task['goonet:revert_to_original_config'].invoke
      end
    end

    desc 'goonet用: db:drop (config/goonet/database.yml)'
    task drop: :set_custom_config do
      Rake::Task['db:drop'].invoke
    end

    desc 'goonet用: db:create (config/goonet/database.yml)'
    task create: :set_custom_config  do
      Rake::Task['db:create'].invoke
    end

    desc 'goonet用: db:setup (config/goonet/database.yml)'
    task setup: :set_custom_config  do
      Rake::Task['db:setup'].invoke
    end

    desc 'goonet用: db:migrate (config/goonet/database.yml)'
    task migrate: :set_custom_config  do
      Rake::Task['db:migrate'].invoke
    end

    desc 'goonet用: db:rollback (config/goonet/database.yml)'
    task rollback: :set_custom_config  do
      Rake::Task['db:rollback'].invoke
    end

    # トランザクション系ではなくマスタ系のデータを登録
    # acct_codesテーブルへcsvデータを流し込み
    #
    desc 'goonet用: db:seed (config/goonet/database.yml, db/goonet/*.csv 読み込み)'
    task seed: :set_custom_config  do
      Rake::Task['db:seed'].invoke
    end

    desc 'goonet用: db:version (config/goonet/database.yml)'
    task version: :set_custom_config  do
      Rake::Task['db:version'].invoke
    end

    desc 'goonet用: db:reset (config/goonet/database.yml), create tables from schema.rb.'
    task reset: :set_custom_config  do
      Rake::Task['db:drop'].invoke
      Rake::Task['db:setup'].invoke
    end

    namespace :schema do
      desc 'goonet用: db:schema:load (load from db/goonet/schema.rb)'
      task load: :set_custom_config  do
        Rake::Task['db:schema:load'].invoke
      end

      desc 'goonet用: db:schema:dump (write into db/goonet/schema.rb)'
      task dump: :set_custom_config  do
        Rake::Task['db:schema:dump'].invoke
      end
    end

    namespace :test do
      desc 'goonet用: db:test:prepare (テスト時にスキーマ設定が無ければ準備)'
      task prepare: :set_custom_config  do
        Rake::Task['db:test:prepare'].invoke
      end
    end

  end
end

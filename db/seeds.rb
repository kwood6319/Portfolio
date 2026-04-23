puts "Cleaning database"

Stage.destroy_all
Project.destroy_all

puts "#{Project.count} projects remaining in DB."

ganba = Project.create!(
  title_en: "GanbaAI",
  title_jp: "GanbaAI",
  description_en: "An AI-driven JLPT practice test generator",
  description_ja: "AIを活用したJLPT模擬試験生成ツール",
  link: "https://github.com/kwood6319/GanbaAi",
  skills: ["Rails", "Stimulus", "SCSS", "HTML", "PostgreSQL", "Gemini", "Cloudinary", "Wicked"],
  team_size: 4,
  role_en: "",
  role_jp: "",
  image: "GanbaAI.jpg"
)

Stage.create!(
  title_en: "Design",
  title_ja: "設計",
  description_en: "Our concept for this project was to use Generative AI to help students who are struggling with passing the JLPT.
    For passing a test, the best method is to take as many tests as possible. Unfortunately, it's difficult to keep track of how you're doing in each section.
    We wanted to help all of those studying Japanese.",
  description_ja: "本プロジェクトでは、JLPT合格を目指す学習者を支援するために、生成AIを活用することをコンセプトとしました。
    試験対策においては、できるだけ多くの問題に触れることが重要ですが、分野ごとの理解度を把握することは容易ではありません。
    その課題を解決し、日本語学習者全体をサポートすることを目的としました。",
  project: ganba,
  image: "GanbaAIDesign.jpg"
)

Stage.create!(
  title_en: "Schema",
  title_jp: "スキーマ設計",
  description_en: "We only had two weeks to make this project so we focused on a simple structure.
    There would be a test with multiple questions (10 per test) separated into categories of Kanji, Vocabulary, Grammar, and Reading.
    In our schema we have decks and generated writing, but we didn't get around to implementing them.",
  description_ja: "開発期間が2週間と限られていたため、シンプルな構成に注力しました。
    テストは1回あたり10問で構成し、「漢字」「語彙」「文法」「読解」のカテゴリーに分けています。
    また、デッキ機能や生成ライティング機能もスキーマ上は設計しましたが、実装には至りませんでした。",
  project: ganba,
  image: "GanbaAISchema.jpg"
)

Stage.create!(
  title_en: "Wireframing",
  title_ja: "ワイヤーフレーム",
  description_en: "We wanted to focus on a clear user experience with links.",
  description_ja: "ユーザーが迷わず操作できるよう、リンク導線を意識したシンプルで分かりやすいUI設計を目指しました。",
  project: ganba,
  image: "GanbaAIWireframing.jpg"
)

Stage.create!(
  title_en: "Development",
  title_ja: "開発",
  description_en: "Despite the short length of time we had, we managed to get a lot done.
    We made it so that users can generate their own tests based on a certain level of the JLPT and their chosen category.
    The AI would generate these questions and store the answers.",
  description_ja: "短期間ながらも多くの機能を実装しました。
    ユーザーがJLPTのレベルやカテゴリーを選択すると、AIが問題を生成し、その解答とともに保存できる仕組みを構築しました。",
  project: ganba,
  image: "GanbaAIDevelopment.jpg"
)

Stage.create!(
  title_en: "Future Changes",
  title_ja: "今後の改善",
  description_en: "We will be working on this project some more in the future.
    We want to make a more robust database for generating tests.
    We want to make it so that users can practice as much as they might need.",
  description_ja: "今後も継続して開発を進める予定です。
    テスト生成の精度向上のため、より拡張性の高いデータベース設計を行い、ユーザーが必要なだけ学習できる環境を整えていきます。",
  project: ganba,
  image: "GanbaAIFuture Changes.jpg"
)

puts "Created #{ganba.title} project"
puts "-----------------------------------------------"

connect = Project.create!(
  title_en: "connectPet",
  title_jp: "connectPet",
  description_en: "A pet health management application",
  description_ja: "ペットの健康管理アプリ",
  link: "https://github.com/kwood6319/connectPet",
  skills: ["Rails", "Stimulus", "SCSS", "HTML", "PostgreSQL", "Gemini", "Cloudinary"],
  team_size: 4,
  role_en: "Presenter | Backend Lead",
  role_ja: "発表者 | バックエンド (リーダー)",
  image: "connectPet.jpg"
)

Stage.create!(
  title_en: "Design",
  title_ja: "設計",
  description_en: "As a person with three pets in Japan, there are many difficulties. First, keeping track of what is happening with each of them.
    I'm fortunate that my cats don't need to take medicine but I do need to keep track of when my cats go to the toilet and have stomach issues.
    I needed a way to collate all of this data with accurate timestamps and be able to send it to my vet so I don't have to explain everything myself.
    I speak Japanese but medical Japanese is another story.",
  description_ja: "日本でペットを3匹飼っている中で、日々の健康状態を管理する難しさを実感したことがきっかけです。
    特に排泄状況や体調の変化を記録し、獣医に正確に伝える必要がありました。
    日本語でのコミュニケーションは可能でも、医療分野の表現には難しさがあるため、記録データを時系列で整理し、そのまま共有できる仕組みを構想しました。",
  project: connect,
  image: "connectPetDesign.jpg"
)

Stage.create!(
  title_en: "Schema",
  title_ja: "スキーマ設計",
  description_en: "It was my first time designing such a complicated schema. We needed to have two different types of users; the owners and the vets.
    Each owner might have multiple pets. Then, each pet might have multiple things they need to keep track of.
    Though it isn't very scalable, we decided to add attributes to the pet database in order to make it in time for our MVP presentation.
    We also added a chat feature and for that to work, we added a chat and messages section to our schema. Each message will be saved to the database.",
  description_ja: "複雑なスキーマ設計に初めて取り組みました。
    ユーザーは「飼い主」と「獣医」の2種類に分かれ、飼い主は複数のペットを管理できます。
    さらに、ペットごとに複数の記録項目を持たせる必要がありました。
    MVPの期限に間に合わせるため、拡張性には課題が残るものの、ペットに属性を追加する形で対応しました。
    また、チャット機能を実現するため、チャットおよびメッセージテーブルを設計し、各メッセージをデータベースに保存しています。",
  project: connect,
  image: "connectPetSchema.jpg"
)

Stage.create!(
  title_en: "Wireframing",
  title_ja: "ワイヤーフレーム",
  description_en: "I'm not particularly good at front-end design and we only had a day to work on this, but we did our best to wireframe our app.
    Though the final app looked a lot different, it helped to give us an idea of what to create for our app.
    We later decided we didn't like the amount of colours -- it didn't lead to a professional looking app.",
  description_ja: "フロントエンドデザインに強みはありませんが、限られた時間の中で基本的な構成を設計しました。
    最終的なUIは大きく変更されましたが、開発の方向性を明確にする上で役立ちました。
    また、配色についても見直しを行い、よりプロフェッショナルな印象を目指しました。",
  project: connect,
  image: "connectPetWireframing.jpg"
)

Stage.create!(
  title_en: "Development",
  title_ja: "開発",
  description_en: "We worked on the project from Feb 8th to March 13th. A total of 362 commits were made to the project. It was tiring but well worth it.
    We faced several challenges -- we had to make several migrations to our database because we hadn't considered some things.
    We had an issue with our data not exporting properly in Japanese. I also had to struggle a lot with the chat feature and using JavaScript.",
  description_ja: "2月8日から3月13日まで開発を行い、合計362件のコミットを行いました。
    開発過程では、設計段階で考慮しきれなかった点により複数回のマイグレーションが発生しました。
    また、日本語データのエクスポート不具合や、チャット機能の実装（JavaScript）において課題に直面しました。",
  project: connect,
  image: "connectPetDevelopment.jpg"
)

Stage.create!(
  title_en: "Testing",
  title_ja: "テスト",
  description_en: "Though the project works well for the one user, other users and vets don't see the expected behaviour.
    Considering we only had so much development time, it's inevitable for these things to happen.",
  description_ja: "単一ユーザーでの利用は問題ありませんが、複数ユーザーや獣医側の挙動において期待通りに動作しないケースが確認されています。
    開発期間の制約上、一定の課題が残る結果となりました。",
  project: connect,
  image: "connectPetTesting.jpg"
)

Stage.create!(
  title_en: "Future Changes",
  title_ja: "今後の改善",
  description_en: "In the near future, I'm going to continue working on this project with my group mates and two more members.
    We're going to work out the kinks and get the app ready for production.",
  description_ja: "今後はチームメンバーを増やし、継続的に改善を進める予定です。
    不具合の解消および機能の安定化を図り、本番環境での運用を目指します。",
  project: connect,
  image: "connectPetFuture Changes.jpg"
)

puts "Created #{connect.title} project"
puts "-----------------------------------------------"

library = Project.create!(
  title_en: "Classroom Library",
  title_ja: "Classroom Library",
  description_en: "A management application for small libraries",
  description_ja: "小規模図書館向けの書籍管理アプリ",
  link: "https://github.com/kwood6319/ClassroomLibrary",
  skills: ["Rails", "SCSS", "HTML", "PostgreSQL"],
  team_size: 1,
  role_en: "Full-Stack Engineer",
  role_ja: "フルスタックエンジニア",
  image: "Classroom Library.jpg"
)

Stage.create!(
  title_en: "Design",
  title_ja: "設計",
  description_en: "The concept for this project is allowing small schools or classes to keep track of their books when they loan them to students.
    Reading is a great way to encourage and develop students' language ability, so we should do whatever we can do to make books more accessible.",
  description_ja: "小規模な学校やクラスにおいて、貸出図書を効率的に管理できるシステムを目指しました。
    読書は言語能力の向上に有効であり、書籍へのアクセス性を高めることが重要だと考えています。",
  project: library,
  image: "Classroom LibraryDesign.jpg"
)

Stage.create!(
  title_en: "Schema",
  title_ja: "スキーマ設計",
  description_en: "The schema itself is simple. The real USP of this project is its adaptability to different classrooms.",
  description_ja: "スキーマ自体はシンプルですが、教室ごとの運用に柔軟に対応できる点を特徴としています。",
  project: library,
  image: "Classroom LibrarySchema.jpg"
)

Stage.create!(
  title_en: "Wireframing",
  title_ja: "ワイヤーフレーム",
  description_en: "Since this application may be used on desktop or (more likely) a tablet, it was important to have a landscape design.
    It was important that the currently checked out books are visible on all pages.",
  description_ja: "デスクトップおよびタブレットでの利用を想定し、横向きレイアウトを採用しました。
    また、貸出中の書籍が常に確認できるよう設計しています。",
  project: library,
  image: "Classroom LibraryWireframing.jpg"
)

Stage.create!(
  title_en: "Development",
  title_ja: "開発",
  description_en: "This project is still under development.
  I am aiming to finish the CRUD actions and then implement barcode scanning to make it easier for loans and returns.",
  description_ja: "現在も開発中です。
    CRUD機能の実装を完了後、貸出・返却を効率化するためにバーコードスキャン機能の導入を予定しています。",
  project: library,
  image: "Classroom LibraryDevelopment.jpg"
)

puts "Created #{library.title} project"
puts "-----------------------------------------------"

match = Project.create!(
  title_en: "KiFor Match",
  title_ja: "KiFor Match",
  description_en: "Matching charity needs with donor items",
  description_ja: "慈善団体のニーズと寄付品をマッチングさせるアプリ",
  link: "https://github.com/kwood6319/kifor-match",
  skills: ["Rails", "SCSS", "HTML", "PostgreSQL"],
  team_size: 5,
  role_en: "Lead Dev | Frontend Lead",
  role_ja: "テックリード | フロントエンド (リーダー)",
  image: "KiFor Match.jpg"
)

Stage.create!(
  title_en: "Schema",
  title_ja: "スキーマ設計",
  description_en: "We have two types of users, charities who request things, and donors who offer items for the request.",
  description_ja: "ユーザーは「支援を求める団体」と「物資を提供する支援者」の2種類に分かれています。",
  project: match,
  image: "KiFor MatchSchema.jpg"
)

Stage.create!(
  title_en: "Wireframing",
  title_ja: "ワイヤーフレーム",
  description_en: "This app is desktop-first so the design is landscape.
    I used the colours and themes from the company's logo.",
  description_ja: "デスクトップ利用を前提とした横長レイアウトを採用しました。
    また、企業ロゴに合わせた配色・デザインを取り入れています。",
  project: match,
  image: "KiFor MatchWireframing.jpg"
)

Stage.create!(
  title_en: "Development",
  title_ja: "開発",
  description_en: "We are currently under development. We're still working on our controllers and models.",
  description_ja: "現在開発中であり、コントローラーおよびモデルの実装を進めています。",
  project: match,
  image: "KiFor MatchDevelopment.jpg"
)

puts "Created #{match.title} project"


# name = Project.create!(
#   title_en: "",
#   title_ja: "",
#   description_en: "",
#   description_ja: "",
#   link: "",
#   skills: []
# )

#  Stage.create!(
#   title_en: "",
#   title_ja: "",
#   description_en: "",
#   description:ja: "",
#   project:
# )

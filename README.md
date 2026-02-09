Here is a professional version of your README.md in English. It is tailored to highlight your technical understanding of the MVC pattern and web development fundamentals.

📝 The Gossip Project (Sinatra Edition)
Welcome to The Gossip Project, a dynamic web application built with Ruby and the Sinatra framework. This project serves as an anonymous gossip platform, demonstrating the implementation of the MVC (Model-View-Controller) architecture and data persistence using CSV files.

🚀 Key Features
Read (Index): Displays a comprehensive list of all stored gossips.

Create: A user-friendly form to submit new authors and their secrets.

Dynamic Routing (Show): Dedicated pages for individual gossips using dynamic URL parameters (/gossips/:id).

Modern UI: A clean, responsive interface styled with Bootstrap 5 utilizing a Layout system (DRY principle).

Data Persistence: All entries are saved locally in a db/gossip.csv file.

🛠️ Technical Stack
Language: Ruby

Web Framework: Sinatra

Server: Puma / Rack

Database: CSV (Comma-Separated Values)

Frontend: ERB (Embedded Ruby), HTML5, Bootstrap 5

📂 Project Architecture
Plaintext

.
├── config.ru           # Application entry point for Rack
├── Gemfile             # Dependency management (Gems)
├── db/
│   └── gossip.csv      # Flat-file storage (CSV)
└── lib/
    ├── gossip.rb       # Model: Business logic & CSV access
    ├── controller.rb   # Controller: Routing & data flow management
    └── views/          # Views: ERB templates for HTML rendering
        ├── layout.erb  # Common framework (Navbar, Bootstrap setup)
        ├── index.erb   # Homepage (Gossip list)
        ├── new_gossip.erb # Creation form
        └── show.erb    # Individual gossip details
⚙️ Setup & Installation
Clone the repository:

Bash

git clone <https://github.com/wiwi240/the_gossip_project_sinatra>
cd the_gossip_project_sinatra
Install dependencies:

Bash

bundle install
Launch the server: For standard execution:

Bash

rackup -p 4567
For development with auto-reload:

Bash

rerun rackup -p 4567
Access the application: Open http://localhost:4567 in your browser.

✍️ Author
William - Fullstack Developer Apprentice - Your GitHub Profile
puts 'Creating Static Users'

User.create(email: 'admin@example.com',
            password: '123456',
            password_confirmation: '123456')

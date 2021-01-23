ActiveRecord::Base.transaction do
  admin_user = User.create({
    email: 'superadmin@oway.com',
    password: 'abcABC01'
  })
end
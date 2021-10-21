class profileModel{
late final String imagename;
late final String name;
profileModel({required this.imagename,required this.name});
}

List<profileModel> profileData = [
  profileModel(imagename: 'assets/profileicon/edit.png', name: 'Edit Profile'),
  profileModel(imagename: 'assets/profileicon/location.png', name: 'Shipping Address'),
  profileModel(imagename: 'assets/profileicon/wishlist.png', name: 'WishList'),
  profileModel(imagename: 'assets/profileicon/order.png', name: 'Order History'),
  profileModel(imagename: 'assets/profileicon/trackorder.png', name: 'Track Order'),
  profileModel(imagename: 'assets/profileicon/card.png', name: 'Cards'),
  profileModel(imagename: 'assets/profileicon/notification.png', name: 'Notifications'),
  profileModel(imagename: 'assets/profileicon/logout.png', name: 'Log Out'),
];
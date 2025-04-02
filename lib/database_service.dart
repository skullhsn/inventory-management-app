import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference inventoryCollection = FirebaseFirestore.instance
      .collection('items');

  // Add item
  Future<void> addItem(String name, int quantity) async {
    await inventoryCollection.add({'name': name, 'quantity': quantity});
  }

  // Read items (real-time)
  Stream<QuerySnapshot> getItems() {
    return inventoryCollection.snapshots();
  }

  // Update item
  Future<void> updateItem(String id, String newName, int newQuantity) async {
    await inventoryCollection.doc(id).update({
      'name': newName,
      'quantity': newQuantity,
    });
  }

  // Delete item
  Future<void> deleteItem(String id) async {
    await inventoryCollection.doc(id).delete();
  }
}

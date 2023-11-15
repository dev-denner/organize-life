export interface IPurchaseItems {
  id?: number;
  external_code: string;
  purchase_id: number;
  product_id?: number;
  description: string;
  supplier_code: string;
  value: number;
  unit: string;
  unitary_value: number;
  total_amount: number;
  discount?: number;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
}
import { IMovements } from './movements.interface';
import { IPurchaseItems } from './purchase-items.interface';

export interface IPurchases {
  id?: number;
  external_code: string;
  supplier_id: number;
  number_installments: number;
  full_amount_discount: number;
  discount_value?: number;
  amount_charged: number;
  date_time: Date;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
  movements: IMovements[];
  purchase_items: IPurchaseItems[];
}
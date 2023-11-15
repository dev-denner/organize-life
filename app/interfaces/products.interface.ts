import { IPurchaseItems } from "./purchase-items.interface";

export interface IProducts {
  id?: number;
  external_code: string;
  description: string;
  default_unit: string;
  category_id: number;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
  purchase_items: IPurchaseItems[];
}
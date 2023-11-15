export interface IMovements {
  id?: number;
  external_code: string;
  account_id: number;
  purchase_id: number;
  description: string;
  value: number;
  date_time: Date;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
}
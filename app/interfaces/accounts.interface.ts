import { IMovements } from './movements.interface';

export interface IAccounts {
  id?: number;
  external_code: string;
  user_id: number;
  name: string;
  acronym: string;
  type: string;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
  movements?: IMovements[];
}
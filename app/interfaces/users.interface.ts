export interface IUsers {
  id?: number;
  external_code: string;
  name: string;
  email: string;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
}
export interface ICategories {
  id?: number;
  external_code: string;
  name: string;
  code: string;
  parent_code?: string;
  create_in: Date;
  created_by: number;
  update_in?: Date;
  last_changed_by?: number;
}
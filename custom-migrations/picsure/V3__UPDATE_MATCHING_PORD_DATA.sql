use auth;

-- Delete

delete from auth.userMetadataMapping;

delete from auth.role_privilege;

delete from auth.user_role;

delete from auth.user;

delete from auth.connection;

delete from auth.role;

delete from auth.privilege;

delete from auth.application;

-- Insert

-- Application
insert into auth.application (uuid, description, enable, name, token, url)  values ('0x5AD2C3929C474B2795CC0D08C9680B43', null, b'\x01', 'PICSURE', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJQU0FNQV9BUFBMSUNBVElPTnw1YWQyYzM5Mi05YzQ3LTRiMjctOTVjYy0wZDA4Yzk2ODBiNDMiLCJleHAiOjE1OTY4MTMxNDcsInVzZXJfaWQiOiJQU0FNQV9BUFBMSUNBVElPTnxQSUNTVVJFIiwiaWF0IjoxNTY1Mjc3MTQ3fQ.AT4_dJiduhBIe_nEqCE4p8hdfrKGNQZ0DWvjj6iF-4I', '/picsureui' );
insert into auth.application (uuid, description, enable, name, token, url)  values ('0x93C6771E780141F9BCAF879C3DEB494E', 'i2b2/tranSmart web application', b'\x01', 'TRANSMART', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJQU0FNQV9BUFBMSUNBVElPTnw5M2M2NzcxZS03ODAxLTQxZjktYmNhZi04NzljM2RlYjQ5NGUiLCJleHAiOjE1OTY4MTMxNTYsInVzZXJfaWQiOiJQU0FNQV9BUFBMSUNBVElPTnxUUkFOU01BUlQiLCJpYXQiOjE1NjUyNzcxNTZ9.oKB6iBzo_eY97arKgZ1ENTIHmRKkmOIsK7XQPapoyGI', '/transmart/login/callback_processor' );
insert into auth.application (uuid, description, enable, name, token, url)  values ('0xD62A159307D7497F994747956ECB5CF8', null, b'\x01', 'IRCT', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJQU0FNQV9BUFBMSUNBVElPTnxkNjJhMTU5My0wN2Q3LTQ5N2YtOTk0Ny00Nzk1NmVjYjVjZjgiLCJleHAiOjE1OTY4MTQ3OTUsInVzZXJfaWQiOiJQU0FNQV9BUFBMSUNBVElPTnxJUkNUIiwiaWF0IjoxNTY1Mjc4Nzk1fQ.FXQp17giml8q2LNF64DgCRlrkj5w8kvdG--pbSc9m8s', null );

-- Privilege
insert into auth.privilege (uuid, description, name, application_id )  values ('0x1090C00465124A79840A80DD8B338BCA', 'Counts only user of i2b2/tranSmart', 'TM_PUBLIC_USER', '0x93C6771E780141F9BCAF879C3DEB494E'  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0x2A98EF8A8E734F50A03545934F56F085', 'PIC-SURE Auth super admin for managing roles/privileges/application/connections', 'SUPER_ADMIN', null  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0x2D961D1E38F74343AE28799157883A0B', 'PIC-SURE Auth admin for managing users.', 'ADMIN', null  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0x4AA04C8BB9AE474F85819B3EBB1442C3', 'test', 'test', '0x5AD2C3929C474B2795CC0D08C9680B43'  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0x594B05C4C4BA4B6DBB673D3121495763', 'Administrator for i2b2/tranSmart', 'TM_ADMIN', '0x93C6771E780141F9BCAF879C3DEB494E'  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0x86545B69DBCC411886A2C3EDE87E01B6', 'Can download data from i2b2/tranSmart', 'TM_DATASET_EXPLORER_ADMIN', '0x93C6771E780141F9BCAF879C3DEB494E'  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0xBF007FF163914B4684388A5E7322ABCA', 'Can view data in i2b2/tranSmart', 'TM_STUDY_OWNER', '0x93C6771E780141F9BCAF879C3DEB494E'  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0xC0EDE3EBF5DD4F3991DD02EC7F2320FF', 'Can do anything through in pic-sure application', 'PIC-SURE-UNRESTRICTED-USER', '0x5AD2C3929C474B2795CC0D08C9680B43'  );

-- Role
insert into auth.role (uuid, name, description)  values ('0x2B1D560AD0344FADAAB9939B2FDFEEFA', 'TM_LEVEL1', 'Level1 access for i2b2/tranSMART application' );
insert into auth.role (uuid, name, description)  values ('0x3AD61383AAA54B9CBC4A3FDAD5842358', 'PIC-SURE Top Admin', 'PIC-SURE Auth Micro App Top admin including Admin and super Admin' );
insert into auth.role (uuid, name, description)  values ('0x3B0B5D41B3CA48C18C5BEF7877CE4C0A', 'TM_LEVEL2', 'Level2 access to i2b2/tranSMART' );
insert into auth.role (uuid, name, description)  values ('0x5EAC52C8AC7446D19151EBE3D50BE229', 'TM_ADMIN', 'Can do anything in i2b2/tranSmart' );
insert into auth.role (uuid, name, description)  values ('0xD35F862CB20A47EE83F77DF248BCA37E', 'PIC-SURE Unstricted User', null );

-- Connection
insert into auth.connection (uuid, label, id, subprefix, requiredFields)  values ('0xD2DE10E5B93D11E9AE540AAE033BE7C2', 'Google', 'google-oauth2', 'google-oauth2|', '[{"label":"Email", "id":"email"}]' );
insert into auth.connection (uuid, label, id, subprefix, requiredFields)  values ('0xD303C08EB93D11E9AE540AAE033BE7C2', 'HMS', 'hms-it', 'samlp|', '[{"label":"Email", "id":"email"}]' );

-- Role Privilege
insert into auth.role_privilege (role_id, privilege_id)  values ('0x2B1D560AD0344FADAAB9939B2FDFEEFA', '0x1090C00465124A79840A80DD8B338BCA');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x3B0B5D41B3CA48C18C5BEF7877CE4C0A', '0x1090C00465124A79840A80DD8B338BCA');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x5EAC52C8AC7446D19151EBE3D50BE229', '0x1090C00465124A79840A80DD8B338BCA');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x3AD61383AAA54B9CBC4A3FDAD5842358', '0x2A98EF8A8E734F50A03545934F56F085');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x3AD61383AAA54B9CBC4A3FDAD5842358', '0x2D961D1E38F74343AE28799157883A0B');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x5EAC52C8AC7446D19151EBE3D50BE229', '0x594B05C4C4BA4B6DBB673D3121495763');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x3B0B5D41B3CA48C18C5BEF7877CE4C0A', '0x86545B69DBCC411886A2C3EDE87E01B6');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x2B1D560AD0344FADAAB9939B2FDFEEFA', '0xBF007FF163914B4684388A5E7322ABCA');
insert into auth.role_privilege (role_id, privilege_id)  values ('0xD35F862CB20A47EE83F77DF248BCA37E', '0xC0EDE3EBF5DD4F3991DD02EC7F2320FF');

-- UserMetadata Mapping
insert into auth.userMetadataMapping (uuid, auth0MetadataJsonPath, connectionId, generalMetadataJsonPath)  values ('0xD2E38A50B93D11E9AE540AAE033BE7C2', '$.email', '0xD2DE10E5B93D11E9AE540AAE033BE7C2', '$.email');
insert into auth.userMetadataMapping (uuid, auth0MetadataJsonPath, connectionId, generalMetadataJsonPath)  values ('0xD3088F89B93D11E9AE540AAE033BE7C2', '$.email', '0xD303C08EB93D11E9AE540AAE033BE7C2', '$.email');


commit;
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
insert into auth.application (uuid, description, enable, name, token, url)  values ('0x5AD2C3929C474B2795CC0D08C9680B43', null, 0x01, 'PICSURE', 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJQU0FNQV9BUFBMSUNBVElPTnw1YWQyYzM5Mi05YzQ3LTRiMjctOTVjYy0wZDA4Yzk2ODBiNDMiLCJleHAiOjE1OTY4MTMxNDcsInVzZXJfaWQiOiJQU0FNQV9BUFBMSUNBVElPTnxQSUNTVVJFIiwiaWF0IjoxNTY1Mjc3MTQ3fQ.AT4_dJiduhBIe_nEqCE4p8hdfrKGNQZ0DWvjj6iF-4I', '/picsureui' );

-- Privilege
insert into auth.privilege (uuid, description, name, application_id )  values ('0x2A98EF8A8E734F50A03545934F56F085', 'PIC-SURE Auth super admin for managing roles/privileges/application/connections', 'SUPER_ADMIN', null  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0x2D961D1E38F74343AE28799157883A0B', 'PIC-SURE Auth admin for managing users.', 'ADMIN', null  );
insert into auth.privilege (uuid, description, name, application_id )  values ('0xC0EDE3EBF5DD4F3991DD02EC7F2320FF', 'Can do anything through in pic-sure application', 'PIC-SURE-UNRESTRICTED-USER', '0x5AD2C3929C474B2795CC0D08C9680B43'  );

-- Role
insert into auth.role (uuid, name, description)  values ('0x3AD61383AAA54B9CBC4A3FDAD5842358', 'PIC-SURE Top Admin', 'PIC-SURE Auth Micro App Top admin including Admin and super Admin' );
insert into auth.role (uuid, name, description)  values ('0xD35F862CB20A47EE83F77DF248BCA37E', 'PIC-SURE Unstricted User', null );
insert into auth.role (uuid, name, description)  values ('0x2D961D1E38F74343AE28799157883A0B', 'PIC-SURE Admin', null );

-- Connection
insert into auth.connection (uuid, label, id, subprefix, requiredFields)  values ('0xD2DE10E5B93D11E9AE540AAE033BE7C2', 'Google', 'google-oauth2', 'google-oauth2|', '[{"label":"Email", "id":"email"}]' );
insert into auth.connection (uuid, label, id, subprefix, requiredFields)  values ('0xD303C08EB93D11E9AE540AAE033BE7C2', 'HMS', 'hms-it', 'samlp|', '[{"label":"Email", "id":"email"}]' );

-- Role Privilege
insert into auth.role_privilege (role_id, privilege_id)  values ('0x3AD61383AAA54B9CBC4A3FDAD5842358', '0x2A98EF8A8E734F50A03545934F56F085');
insert into auth.role_privilege (role_id, privilege_id)  values ('0x3AD61383AAA54B9CBC4A3FDAD5842358', '0x2D961D1E38F74343AE28799157883A0B');
insert into auth.role_privilege (role_id, privilege_id)  values ('0xD35F862CB20A47EE83F77DF248BCA37E', '0xC0EDE3EBF5DD4F3991DD02EC7F2320FF');

-- UserMetadata Mapping
insert into auth.userMetadataMapping (uuid, auth0MetadataJsonPath, connectionId, generalMetadataJsonPath)  values ('0xD2E38A50B93D11E9AE540AAE033BE7C2', '$.email', '0xD2DE10E5B93D11E9AE540AAE033BE7C2', '$.email');
insert into auth.userMetadataMapping (uuid, auth0MetadataJsonPath, connectionId, generalMetadataJsonPath)  values ('0xD3088F89B93D11E9AE540AAE033BE7C2', '$.email', '0xD303C08EB93D11E9AE540AAE033BE7C2', '$.email');


commit;
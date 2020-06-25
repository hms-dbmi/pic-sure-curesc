use auth;

-- Connection
insert into auth.connection (uuid, label, id, subprefix, requiredFields)  values (0xD303C08EB93D11E9AE540AAE033BE7C2, 'HMS', 'hms-it', 'samlp|', '[{"label":"Email", "id":"email"}]' );
 
-- UserMetadata Mapping
insert into auth.userMetadataMapping (uuid, auth0MetadataJsonPath, connectionId, generalMetadataJsonPath)  values (0xAE540AAE033BE7C2D3088F89B93D11E9, '$.email', 0xD303C08EB93D11E9AE540AAE033BE7C2, '$.email');

 
commit; 

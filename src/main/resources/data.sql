INSERT INTO configuration(id, organization_id, controller) values (1, '24tr1q3w', 'AWS');
INSERT INTO configuration(id, organization_id, controller) values (2, '24tr1q3w', 'VMWARE');
INSERT INTO configuration(id, organization_id, controller) values (3, '24tr1q3w', 'OPENSTACK');
INSERT INTO configuration(id, organization_id, controller) values (4, '24tr1q3w', 'AZURE');

INSERT INTO configuration(id, organization_id, controller) values (5, 'rg563ebc', 'AWS');
INSERT INTO configuration(id, organization_id, controller) values (6, 'rg563ebc', 'VMWARE');
INSERT INTO configuration(id, organization_id, controller) values (7, 'rg563ebc', 'OPENSTACK');
INSERT INTO configuration(id, organization_id, controller) values (8, 'rg563ebc', 'AZURE');

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_URL', 'http://example.com',1);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_USER', 'admin',1);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_PWD', 'adminadmin',1);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_DEFAULT_TENANT', 'publicaws',1);

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_API', 'http://test.vmware.com',2);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_USER', 'vmwareadmin',2);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_PWD', 'qwerty123',2);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_SETT1', 'test123',2);

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_URL_API', 'http://devstack.local',3);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_USER', 'administrator',3);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_PWD', 'admin',3);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_SETT1', 'val124444',3);

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_ENDPOINT', 'http://azure.cloud:8080',4);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_USER', 'tester',4);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_PWD', 'tester',4);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_SETT1', 'setval1',4);

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_URL', 'http://aws.com',5);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_USER', 'administrator',5);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_PWD', 'admin123',5);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AWS_DEFAULT_TENANT', 'publicaws',5);

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_API', 'http://vmware.local',6);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_USER', 'vmwareadmin',6);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_PWD', 'qwerty123',6);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('VMWARE_SETT1', 'val1111111',6);

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_URL_API', 'http://soc.test.com',7);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_USER', 'administrator',7);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_PWD', 'admin',7);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('OS_SETT1', 'sett1111111',7);

INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_ENDPOINT', 'http://cloudazure.com',8);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_USER', 'admin',8);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_PWD', 'admin123123',8);
INSERT INTO configuration_setting(key, value, configuration_id) VALUES ('AZ_SETT1', 'val1',8);
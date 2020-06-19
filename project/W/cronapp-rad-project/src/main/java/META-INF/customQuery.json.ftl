{
    <#if mutual?? && (mutual?lower_case == "sim" || mutual?lower_case == "yes")>
    "keyManager" : {
        "customId": "userProviderKey",
        "queryName": "Obter Usuário por ProviderKey",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "Login",
        "entityFullName": "app.entity.Login",
        "query": {
          "isValid": true,
          "isEmpty": false,
          "operationType": "object",
          "type": "select",
          "rulesEntity": [
            {
              "entity": "Login",
              "namespace": "app.entity.Login",
              "alias": "l"
            }
          ],
          "rulesSelect": [
            {
              "func": "get",
              "field": "l",
              "type": "string"
            }
          ],
          "rulesGroupBy": [],
          "rulesHaving": [],
          "rulesOrderBy": [],
          "rules": {
            "condition": "AND",
            "rules": [
              {
                "id": "l.loginProvider",
                "field": "l.loginProvider",
                "type": "string",
                "input": "text",
                "operator": "equal",
                "value": ":loginProvider",
                "valueIsField": false
              },
              {
                "id": "l.providerKey",
                "field": "l.providerKey",
                "type": "string",
                "input": "text",
                "operator": "equal",
                "value": ":providerKey",
                "valueIsField": false
              }
            ],
            "not": false,
            "valid": true
          },
          "isRawSql": false,
          "multiTenant": false,
          "paginatorAutomatic": false,
          "pagination": false
        },
        "queryParamsValues": [
          {
            "fieldName": "loginProvider",
            "fieldValue": ""
          },
          {
            "fieldName": "providerKey",
            "fieldValue": ""
          }
        ],
        "verbs": {
          "GET": false,
          "GETAuthorities": null,
          "POST": false,
          "POSTAuthorities": null,
          "PUT": false,
          "PUTAuthorities": null,
          "DELETE": false,
          "DELETEAuthorities": null,
          "FILTER": false,
          "FILTERAuthorities": null,
          "COUNT": false,
          "COUNTAuthorities": null
        },
        "events": {
          "beforeInsert": null,
          "beforeUpdate": null,
          "beforeDelete": null,
          "afterInsert": null,
          "afterUpdate": null,
          "afterDelete": null,
          "onNavigate": null,
          "onGetData": null,
          "onError": null
        },
        "defaultValues": {
          "id": null,
          "loginProvider": null,
          "providerDisplayName": null,
          "providerKey": null,
          "user": null
        },
        "defaultValuesProperties": {
          "id": null,
          "loginProvider": null,
          "providerDisplayName": null,
          "providerKey": null,
          "user": null
        },
        "security": {
          "id": null,
          "loginProvider": null,
          "providerDisplayName": null,
          "providerKey": null,
          "user": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
          "primaryKey": null,
          "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/keyManager/",
        "audit": false
    },
    </#if>
    "auditlogquery": {
        "customId": "auditlogquery",
        "queryName": "{{AUDIT_LOG}}",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "AuditLog",
        "entityFullName": "app.entity.AuditLog",
        "query": {
            "isValid": true,
            "rulesEntity": [
                {
                    "entity": "AuditLog",
                    "alias": "a",
                    "namespace": "app.entity.AuditLog"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "a"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "not": false,
                "valid": true,
                "rules": []
            }
        },
        "queryParamsValues": [],
        "verbs": {
            "GET": false,
            "GETAuthorities": null,
            "POST": false,
            "POSTAuthorities": null,
            "PUT": false,
            "PUTAuthorities": null,
            "DELETE": false,
            "DELETEAuthorities": null,
            "FILTER": false,
            "FILTERAuthorities": null,
            "COUNT": false,
            "COUNTAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null
        },
        "defaultValues": {
            "id": null,
            "type": null,
            "command": null,
            "date": null,
            "objectData": null,
            "user": null,
            "host": null,
            "agent": null,
            "server": null,
            "affectedFields": null
        },
        "defaultValuesProperties": {
            "id": null,
            "type": null,
            "command": null,
            "date": null,
            "objectData": null,
            "user": null,
            "host": null,
            "agent": null,
            "server": null,
            "affectedFields": null
        },
        "security": {
            "id": null,
            "type": null,
            "command": null,
            "date": null,
            "objectData": null,
            "user": null,
            "host": null,
            "agent": null,
            "server": null,
            "affectedFields": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/auditlogquery/",
        "audit": false
    },
    "userSecurables": {
        "customId": "userSecurables",
        "queryName": "Obter Autorizações do Usuário",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "UserSecurable",
        "entityFullName": "app.entity.UserSecurable",
        "query": {
            "isValid": true,
            "isEmpty": false,
            "operationType": "object",
            "type": "select",
            "rulesEntity": [
                {
                    "entity": "UserSecurable",
                    "namespace": "app.entity.UserSecurable",
                    "alias": "u"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "u.securable",
                    "type": "string"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "rules": [
                    {
                        "id": "u.user.normalizedUserName",
                        "field": "u.user.normalizedUserName",
                        "type": "string",
                        "input": "text",
                        "operator": "equal",
                        "value": ":login",
                        "valueIsField": false
                    }
                ],
                "not": false,
                "valid": true
            },
            "isRawSql": false,
            "multiTenant": false,
            "paginatorAutomatic": false,
            "pagination": false
        },
        "queryParamsValues": [
            {
                "fieldName": "login",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": false,
            "GETAuthorities": null,
            "POST": false,
            "POSTAuthorities": null,
            "PUT": false,
            "PUTAuthorities": null,
            "DELETE": false,
            "DELETEAuthorities": null,
            "FILTER": true,
            "FILTERAuthorities": null,
            "COUNT": true,
            "COUNTAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null
        },
        "defaultValues": {
            "id": null,
            "securable": null,
            "user": null
        },
        "defaultValuesProperties": {
            "id": null,
            "securable": null,
            "user": null
        },
        "security": {
            "id": null,
            "securable": null,
            "user": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/userSecurables/",
        "audit": false
    },
    "roleSecurables": {
        "customId": "roleSecurables",
        "queryName": "Obter Autorizações do Papel",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "RoleSecurable",
        "entityFullName": "app.entity.RoleSecurable",
        "query": {
            "isValid": true,
            "isEmpty": false,
            "operationType": "object",
            "type": "select",
            "rulesEntity": [
                {
                    "entity": "RoleSecurable",
                    "namespace": "app.entity.RoleSecurable",
                    "alias": "r"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "r.securable",
                    "type": "string"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "rules": [
                    {
                        "id": "r.role.normalizedName",
                        "field": "r.role.normalizedName",
                        "type": "string",
                        "input": "text",
                        "operator": "equal",
                        "value": ":role",
                        "valueIsField": false
                    }
                ],
                "not": false,
                "valid": true
            },
            "isRawSql": false,
            "multiTenant": false,
            "paginatorAutomatic": false,
            "pagination": false
        },
        "queryParamsValues": [
            {
                "fieldName": "role",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": false,
            "GETAuthorities": null,
            "POST": false,
            "POSTAuthorities": null,
            "PUT": false,
            "PUTAuthorities": null,
            "DELETE": false,
            "DELETEAuthorities": null,
            "FILTER": true,
            "FILTERAuthorities": null,
            "COUNT": true,
            "COUNTAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null
        },
        "defaultValues": {
            "id": null,
            "role": null,
            "securable": null
        },
        "defaultValuesProperties": {
            "id": null,
            "role": null,
            "securable": null
        },
        "security": {
            "id": null,
            "role": null,
            "securable": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/roleSecurables/"
    },
    "securables": {
        "customId": "securables",
        "queryName": "Securables",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "Securable",
        "entityFullName": "app.entity.Securable",
        "query": {
            "isValid": true,
            "isEmpty": false,
            "operationType": "object",
            "type": "select",
            "rulesEntity": [
                {
                    "entity": "Securable",
                    "namespace": "app.entity.Securable",
                    "alias": "s"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "s",
                    "type": "string"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "rules": [
                    {
                        "id": "s.name",
                        "field": "s.name",
                        "type": "string",
                        "input": "text",
                        "operator": "equal",
                        "value": ":name",
                        "valueIsField": false
                    }
                ],
                "not": false,
                "valid": true
            },
            "isRawSql": false,
            "multiTenant": false,
            "paginatorAutomatic": false,
            "pagination": false
        },
        "queryParamsValues": [
            {
                "fieldName": "name",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": true,
            "GETAuthorities": null,
            "POST": true,
            "POSTAuthorities": null,
            "PUT": true,
            "PUTAuthorities": null,
            "DELETE": true,
            "DELETEAuthorities": null,
            "FILTER": true,
            "FILTERAuthorities": null,
            "COUNT": true,
            "COUNTAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null,
            "onError": null
        },
        "defaultValues": {
            "id": null,
            "name": null
        },
        "defaultValuesProperties": {
            "id": null,
            "name": null
        },
        "security": {
            "id": null,
            "name": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/query421006/",
        "audit": false
    },
    "securableViews": {
        "customId": "securableViews",
        "queryName": "Obter Views do Permissionável",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "View",
        "entityFullName": "app.entity.View",
        "query": {
            "isValid": true,
            "isEmpty": false,
            "operationType": "object",
            "type": "select",
            "rulesEntity": [
                {
                    "entity": "View",
                    "namespace": "app.entity.View",
                    "alias": "v"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "v",
                    "type": "string"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "rules": [
                    {
                        "id": "v.securable.name",
                        "field": "v.securable.name",
                        "type": "string",
                        "input": "text",
                        "operator": "equal",
                        "value": ":securableName",
                        "valueIsField": false
                    }
                ],
                "not": false,
                "valid": true
            },
            "isRawSql": false,
            "multiTenant": false,
            "paginatorAutomatic": false,
            "pagination": false
        },
        "queryParamsValues": [
            {
                "fieldName": "securableName",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": true,
            "GETAuthorities": null,
            "POST": true,
            "POSTAuthorities": null,
            "PUT": true,
            "PUTAuthorities": null,
            "DELETE": true,
            "DELETEAuthorities": null,
            "FILTER": true,
            "FILTERAuthorities": null,
            "COUNT": true,
            "COUNTAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null,
            "onError": null
        },
        "defaultValues": {
            "id": null,
            "securable": null,
            "pattern": null,
            "getMethodAllowed": null,
            "headMethodAllowed": null,
            "putMethodAllowed": null,
            "postMethodAllowed": null,
            "patchMethodAllowed": null,
            "deleteMethodAllowed": null,
            "optionsMethodAllowed": null,
            "traceMethodAllowed": null
        },
        "defaultValuesProperties": {
            "id": null,
            "securable": null,
            "pattern": null,
            "getMethodAllowed": null,
            "headMethodAllowed": null,
            "putMethodAllowed": null,
            "postMethodAllowed": null,
            "patchMethodAllowed": null,
            "deleteMethodAllowed": null,
            "optionsMethodAllowed": null,
            "traceMethodAllowed": null
        },
        "security": {
            "id": null,
            "securable": null,
            "pattern": null,
            "getMethodAllowed": null,
            "headMethodAllowed": null,
            "putMethodAllowed": null,
            "postMethodAllowed": null,
            "patchMethodAllowed": null,
            "deleteMethodAllowed": null,
            "optionsMethodAllowed": null,
            "traceMethodAllowed": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/securableViews/",
        "audit": false
    },
    "auth": {
        "customId": "auth",
        "queryName": "{{AUTHENTICATE}}",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "User",
        "entityFullName": "app.entity.User",
        "query": {
            "isValid": true,
            "isEmpty": false,
            "operationType": "object",
            "type": "select",
            "rulesEntity": [
                {
                    "entity": "User",
                    "namespace": "app.entity.User",
                    "alias": "u"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "u",
                    "type": "string"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "rules": [
                    {
                        "id": "u.normalizedUserName",
                        "field": "u.normalizedUserName",
                        "type": "string",
                        "input": "text",
                        "operator": "equal",
                        "value": ":login",
                        "valueIsField": false
                    }
                ],
                "not": false,
                "valid": true
            },
            "isRawSql": false,
            "multiTenant": false,
            "paginatorAutomatic": false,
            "pagination": false
        },
        "queryParamsValues": [
            {
                "fieldName": "login",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": false,
            "GETAuthorities": null,
            "POST": false,
            "POSTAuthorities": null,
            "PUT": false,
            "PUTAuthorities": null,
            "DELETE": false,
            "DELETEAuthorities": null,
            "FILTER": true,
            "FILTERAuthorities": null,
            "COUNT": true,
            "COUNTAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null
        },
        "defaultValues": {
            "id": null,
            "accessFailedCount": null,
            "email": null,
            "emailConfirmed": null,
            "lockoutEnabled": null,
            "lockoutEnd": null,
            "name": null,
            "normalizedEmail": null,
            "normalizedUserName": null,
            "password": null,
            "phoneNumber": null,
            "phoneNumberConfirmed": null,
            "securityStamp": null,
            "twoFactorEnabled": null,
            "userName": null
        },
        "defaultValuesProperties": {
            "id": null,
            "accessFailedCount": null,
            "email": null,
            "emailConfirmed": null,
            "lockoutEnabled": null,
            "lockoutEnd": null,
            "name": null,
            "normalizedEmail": null,
            "normalizedUserName": null,
            "password": null,
            "phoneNumber": null,
            "phoneNumberConfirmed": null,
            "securityStamp": null,
            "twoFactorEnabled": null,
            "userName": null
        },
        "security": {
            "id": null,
            "accessFailedCount": null,
            "email": null,
            "emailConfirmed": null,
            "lockoutEnabled": null,
            "lockoutEnd": null,
            "name": null,
            "normalizedEmail": null,
            "normalizedUserName": null,
            "password": null,
            "phoneNumber": null,
            "phoneNumberConfirmed": null,
            "securityStamp": null,
            "twoFactorEnabled": null,
            "userName": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/auth/"
    },
    "roles": {
        "customId": "roles",
        "queryName": "{{GET_ROLES}}",
        "sourceType": "entityFullName",
        "baseEntity": null,
        "blockly": null,
        "entitySimpleName": "Role",
        "entityFullName": "app.entity.Role",
        "query": {
            "isValid": true,
            "isEmpty": false,
            "operationType": "object",
            "type": "select",
            "rulesEntity": [
                {
                    "entity": "UserRole",
                    "namespace": "app.entity.UserRole",
                    "alias": "u"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "u.role.normalizedName",
                    "type": "string"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "rules": [
                    {
                        "id": "u.user.normalizedUserName",
                        "field": "u.user.normalizedUserName",
                        "type": "string",
                        "input": "text",
                        "operator": "equal",
                        "value": ":login",
                        "valueIsField": false
                    }
                ],
                "not": false,
                "valid": true
            },
            "isRawSql": false,
            "multiTenant": false,
            "paginatorAutomatic": false,
            "pagination": false
        },
        "queryParamsValues": [
            {
                "fieldName": "login",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": false,
            "GETAuthorities": null,
            "POST": false,
            "POSTAuthorities": null,
            "PUT": false,
            "PUTAuthorities": null,
            "DELETE": false,
            "DELETEAuthorities": null,
            "FILTER": true,
            "FILTERAuthorities": null,
            "COUNT": true,
            "COUNTAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null
        },
        "defaultValues": {
            "id": null,
            "builtin": null,
            "membershipEnabled": null,
            "name": null,
            "normalizedName": null
        },
        "defaultValuesProperties": {
            "id": null,
            "builtin": null,
            "membershipEnabled": null,
            "name": null,
            "normalizedName": null
        },
        "security": {
            "id": null,
            "builtin": null,
            "membershipEnabled": null,
            "name": null,
            "normalizedName": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "calcFieldsProperties": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/odata/v2/app/roles/"
    },
    "tenant": {
        "customId": "tenant",
        "queryName": "{{GET_TENANT_ID}}",
        "screen": "",
        "sourceType": "entityFullName",
        "blockly": null,
        "entitySimpleName": "User",
        "entityFullName": "app.entity.User",
        "query": "select u.company.id from User u where u.login = :login",
        "queryParamsValues": [
            {
                "fieldName": "login",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": false,
            "GETAuthorities": null,
            "POST": false,
            "POSTAuthorities": null,
            "PUT": false,
            "PUTAuthorities": null,
            "DELETE": false,
            "DELETEAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null
        },
        "defaultValues": {
            "id": null,
            "email": null,
            "name": null,
            "login": null,
            "picture": null,
            "password": null,
            "theme": null
        },
        "security": {
            "id": null,
            "email": null,
            "name": null,
            "login": null,
            "picture": null,
            "password": null,
            "theme": null
        },
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/query/tenant/"
    },
    "device": {
        "customId": "device",
        "queryName": "Atualizar Dispositivos",
        "screen": "",
        "sourceType": "entityFullName",
        "blockly": null,
        "entitySimpleName": "Device",
        "entityFullName": "app.entity.Device",
        "query": {
            "isValid": true,
            "isEmpty": false,
            "operationType": "object",
            "type": "select",
            "rulesEntity": [
                {
                    "entity": "Device",
                    "namespace": "app.entity.Device",
                    "alias": "d"
                }
            ],
            "rulesSelect": [
                {
                    "func": "get",
                    "field": "d",
                    "type": "string"
                }
            ],
            "rulesGroupBy": [],
            "rulesHaving": [],
            "rulesOrderBy": [],
            "rules": {
                "condition": "AND",
                "rules": [
                    {
                        "id": "d.id",
                        "field": "d.id",
                        "type": "string",
                        "input": "text",
                        "operator": "equal",
                        "value": ":id",
                        "valueIsField": false
                    }
                ],
                "not": false,
                "valid": true
            },
            "isRawSql": false,
            "multiTenant": true,
            "paginatorAutomatic": false
        },
        "queryParamsValues": [
            {
                "fieldName": "id",
                "fieldValue": ""
            }
        ],
        "verbs": {
            "GET": true,
            "GETAuthorities": null,
            "POST": true,
            "POSTAuthorities": null,
            "PUT": true,
            "PUTAuthorities": null,
            "DELETE": true,
            "DELETEAuthorities": null,
            "FILTER": true,
            "FILTERAuthorities": null
        },
        "events": {
            "beforeInsert": null,
            "beforeUpdate": null,
            "beforeDelete": null,
            "afterInsert": null,
            "afterUpdate": null,
            "afterDelete": null,
            "onNavigate": null,
            "onGetData": null
        },
        "defaultValues": {
            "id": null,
            "token": null
        },
        "security": {
            "id": null,
            "token": null
        },
        "calcFields": {},
        "calcFieldsSecurity": {},
        "errorHandles": {
            "primaryKey": null,
            "foreignKey": null
        },
        "serviceUrl": "api/cronapi/query/1jy88nt41afza/"
    },
"roleManager": {
    "customId": "roleManager",
    "queryName": "Gerenciador de Papéis",
    "sourceType": "entityFullName",
    "baseEntity": null,
    "blockly": null,
    "entitySimpleName": "Role",
    "entityFullName": "app.entity.Role",
    "query": {
      "isValid": true,
      "rulesEntity": [
        {
          "entity": "Role",
          "alias": "r",
          "namespace": "app.entity.Role"
        }
      ],
      "rulesSelect": [
        {
          "func": "get",
          "field": "r"
        }
      ],
      "rulesGroupBy": [],
      "rulesHaving": [],
      "rulesOrderBy": [],
      "rules": {
        "condition": "AND",
        "not": false,
        "valid": true,
        "rules": []
      }
    },
    "queryParamsValues": [],
    "verbs": {
      "GET": true,
      "GETAuthorities": null,
      "POST": true,
      "POSTAuthorities": null,
      "PUT": true,
      "PUTAuthorities": null,
      "DELETE": true,
      "DELETEAuthorities": null,
      "FILTER": true,
      "FILTERAuthorities": null,
      "COUNT": true,
      "COUNTAuthorities": null
    },
    "events": {
      "beforeInsert": {
        "type": "server",
        "blocklyMethod": "BeforeInsert",
        "blocklyClass": "blockly.RoleManager",
        "blocklyLanguage": "java",
        "blocklyParams": [
          {
            "name": "Entidade&lt;app.entity.Role&gt;",
            "value": "data",
            "type": "CUSTOM"
          }
        ],
        "blocklyJson": {
          "namespace": "blockly.RoleManager",
          "sourcePath": "src/main/java/blockly/RoleManager.blockly",
          "language": "java",
          "methods": [
            {
              "name": "BeforeInsert",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.Role&gt;"
              ]
            },
            {
              "name": "BeforeUpdate",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.Role&gt;"
              ]
            },
            {
              "name": "Normalize",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.Role&gt;"
              ]
            }
          ]
        }
      },
      "beforeUpdate": {
        "type": "server",
        "blocklyMethod": "BeforeUpdate",
        "blocklyClass": "blockly.RoleManager",
        "blocklyLanguage": "java",
        "blocklyParams": [
          {
            "name": "Entidade&lt;app.entity.Role&gt;",
            "value": "data",
            "type": "CUSTOM"
          }
        ],
        "blocklyJson": {
          "namespace": "blockly.RoleManager",
          "sourcePath": "src/main/java/blockly/RoleManager.blockly",
          "language": "java",
          "methods": [
            {
              "name": "BeforeInsert",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.Role&gt;"
              ]
            },
            {
              "name": "BeforeUpdate",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.Role&gt;"
              ]
            },
            {
              "name": "Normalize",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.Role&gt;"
              ]
            }
          ]
        }
      },
      "beforeDelete": null,
      "afterInsert": null,
      "afterUpdate": null,
      "afterDelete": null,
      "onNavigate": null,
      "onGetData": null,
      "onError": null
    },
    "defaultValues": {
      "id": null,
      "builtIn": null,
      "membershipEnabled": null,
      "name": null,
      "normalizedName": null
    },
    "defaultValuesProperties": {
      "id": null,
      "builtIn": null,
      "membershipEnabled": null,
      "name": null,
      "normalizedName": null
    },
    "security": {
      "id": null,
      "builtIn": null,
      "membershipEnabled": null,
      "name": null,
      "normalizedName": null
    },
    "calcFields": {},
    "calcFieldsSecurity": {},
    "calcFieldsProperties": {},
    "errorHandles": {
      "primaryKey": null,
      "foreignKey": null
    },
    "serviceUrl": "api/cronapi/odata/v2/app/roleManager/",
    "audit": false
  },
  "userManager": {
    "customId": "userManager",
    "queryName": "Gerenciador de Usuários",
    "sourceType": "entityFullName",
    "baseEntity": null,
    "blockly": null,
    "entitySimpleName": "User",
    "entityFullName": "app.entity.User",
    "query": {
      "isValid": true,
      "rulesEntity": [
        {
          "entity": "User",
          "alias": "u",
          "namespace": "app.entity.User"
        }
      ],
      "rulesSelect": [
        {
          "func": "get",
          "field": "u"
        }
      ],
      "rulesGroupBy": [],
      "rulesHaving": [],
      "rulesOrderBy": [],
      "rules": {
        "condition": "AND",
        "not": false,
        "valid": true,
        "rules": []
      }
    },
    "queryParamsValues": [],
    "verbs": {
      "GET": true,
      "GETAuthorities": null,
      "POST": true,
      "POSTAuthorities": null,
      "PUT": true,
      "PUTAuthorities": null,
      "DELETE": true,
      "DELETEAuthorities": null,
      "FILTER": true,
      "FILTERAuthorities": null,
      "COUNT": true,
      "COUNTAuthorities": null
    },
    "events": {
      "beforeInsert": {
        "type": "server",
        "blocklyMethod": "BeforeInsert",
        "blocklyClass": "blockly.UserManager",
        "blocklyLanguage": "java",
        "blocklyParams": [
          {
            "name": "Entidade&lt;app.entity.User&gt;",
            "value": "data",
            "type": "CUSTOM"
          }
        ],
        "blocklyJson": {
          "namespace": "blockly.UserManager",
          "sourcePath": "src/main/java/blockly/UserManager.blockly",
          "language": "java",
          "methods": [
            {
              "name": "Normalize",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.User&gt;"
              ]
            },
            {
              "name": "BeforeUpdate",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.User&gt;"
              ]
            },
            {
              "name": "BeforeInsert",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.User&gt;"
              ]
            }
          ]
        }
      },
      "beforeUpdate": {
        "type": "server",
        "blocklyMethod": "BeforeUpdate",
        "blocklyClass": "blockly.UserManager",
        "blocklyLanguage": "java",
        "blocklyParams": [
          {
            "name": "Entidade&lt;app.entity.User&gt;",
            "value": "data",
            "type": "CUSTOM"
          }
        ],
        "blocklyJson": {
          "namespace": "blockly.UserManager",
          "sourcePath": "src/main/java/blockly/UserManager.blockly",
          "language": "java",
          "methods": [
            {
              "name": "Normalize",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.User&gt;"
              ]
            },
            {
              "name": "BeforeUpdate",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.User&gt;"
              ]
            },
            {
              "name": "BeforeInsert",
              "hasReturn": "true",
              "params": [
                "Entidade&lt;app.entity.User&gt;"
              ]
            }
          ]
        }
      },
      "beforeDelete": null,
      "afterInsert": null,
      "afterUpdate": null,
      "afterDelete": null,
      "onNavigate": null,
      "onGetData": null,
      "onError": null
    },
    "defaultValues": {
      "id": null,
      "accessFailedCount": null,
      "email": null,
      "emailConfirmed": null,
      "lockoutEnabled": null,
      "lockoutEnd": null,
      "name": null,
      "normalizedEmail": null,
      "normalizedUserName": null,
      "password": null,
      "phoneNumber": null,
      "phoneNumberConfirmed": null,
      "securityStamp": null,
      "twoFactorEnabled": null,
      "userName": null,
      "theme": null,
      "picture": null
    },
    "defaultValuesProperties": {
      "id": null,
      "accessFailedCount": null,
      "email": null,
      "emailConfirmed": null,
      "lockoutEnabled": null,
      "lockoutEnd": null,
      "name": null,
      "normalizedEmail": null,
      "normalizedUserName": null,
      "password": null,
      "phoneNumber": null,
      "phoneNumberConfirmed": null,
      "securityStamp": null,
      "twoFactorEnabled": null,
      "userName": null,
      "theme": null,
      "picture": null
    },
    "security": {
      "id": null,
      "accessFailedCount": null,
      "email": null,
      "emailConfirmed": null,
      "lockoutEnabled": null,
      "lockoutEnd": null,
      "name": null,
      "normalizedEmail": null,
      "normalizedUserName": null,
      "password": null,
      "phoneNumber": null,
      "phoneNumberConfirmed": null,
      "securityStamp": null,
      "twoFactorEnabled": null,
      "userName": null,
      "theme": null,
      "picture": null
    },
    "calcFields": {},
    "calcFieldsSecurity": {},
    "calcFieldsProperties": {},
    "errorHandles": {
      "primaryKey": null,
      "foreignKey": null
    },
    "serviceUrl": "api/cronapi/odata/v2/app/userManager/",
    "audit": false
  }
}
/*==============================================================================
 * Filename    : PostgreSQLInventory_Info.sql
 * Type        :
 * Keywords    :
 *==============================================================================
 * Author      : Celia Muriel - celiamuriel.com
 * Version     : 0.1
 * Date        : 2019-11-08
 *==============================================================================
 * Purpose     : List PostgreSQL server information, as version
 *==============================================================================
 * Description of Workflow : As above
 * Logic :
 *  Comments  : https://celiamuriel.blogspot.com/2019/11/PostgreSQL-Database-Cluster-Inventory.html
 *==============================================================================
 * History
 *
 *  Date        Name                     Modifications
 *  ----------  -----------------------  ---------------------------------------
 *  2019-11-08  Celia Muriel             Initial Version
 *
 *============================================================================*/


\o PostgreSQLInventory_Info.out

\qecho 'PostgreSQL version'
select version();

\qecho 'Run-time parameters of the server'
select name as parameter_name
     , setting
	 , unit
	 , short_desc
	 , extra_desc
	 , context
from pg_catalog.pg_settings;

\o
# masco-ddl

A utility for executing the liquibase with help of changelogs in Mysql.


# Edit the below parameters in pom.xml according to your needs.
<defaultSchemaName>masco</defaultSchemaName>
<url>jdbc:MySql://127.0.0.1:3306/</url>
<username>root</username>
<password>root</password>


# Add the changelog's in the ddl_changelog file under resources with given format
      <changeSet  id="MASCO-1-Create-Dummy-Table"  author="AroraD" runAlways="true">
        <sqlFile
                splitStatements="true"
                path="changelog/MASCO-1-Create-Dummy-Table.sql"/>
        <rollback>
            <sqlFile
                    splitStatements="true"
                    path="rollback/MASCO-1-Create-Dummy-Table.sql"/>
        </rollback>
    </changeSet>


# Add  <validCheckSum></validCheckSum> tags with the value. If you want to edit the previously ran changeset.

# Add runAlwaysTrue in the changeset. If you want to run a specific changeset always.
    <changeSet  id="MASCO-1-Create-Dummy-Table"  author="AroraD" runAlways="true">


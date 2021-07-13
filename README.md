# About

A utility for executing the liquibase with help of changelogs in Mysql.


# Edit the below parameters in pom.xml according to your DB config.
1. defaultSchemaName
2. url
3. username
4. password


# How to write liquibase changesets
1. Prepare the SQL scripts in the changelog dir.
2. Prepare the rollback for the same SQL scripts and place it in the rollback dir.
3. Use the below changeset format while adding new changeset's in the ddl_changelog.xml file.
#<changeSet  id="MASCO-1-Create-Dummy-Table"  author="AroraD" runAlways="true">
        <sqlFile
                splitStatements="true"
                path="changelog/MASCO-1-Create-Dummy-Table.sql"/>
        <rollback>
            <sqlFile
                    splitStatements="true"
                    path="rollback/MASCO-1-Create-Dummy-Table.sql"/>
        </rollback>
    </changeSet>
   
4. Add `<validCheckSum></validCheckSum>` tag with value, If you want to edit the previously ran changeset.
5. Add `runAlwaysTrue` in the changeset. If you want to run a specific changeset always.
    #<changeSet  id="MASCO-1-Create-Dummy-Table"  author="AroraD" runAlways="true">

# Execution steps 
1. To Run the latest changes --> mvn verify
2. To rollback the changes   --> mvn liquibase:rollback -Dliquibase.rollbackCount=X
Note - Replace the X with number of changeset you want to rollback.


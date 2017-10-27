component extends="commandbox-migrations.models.BaseMigrationCommand" {

    function run( string migrationsDirectory = "resources/database/migrations" ) {
        migrationService.setMigrationsDirectory( "#getCWD()#/#arguments.migrationsDirectory#" );

        runCommand( "migrate down" );
        runCommand( "migrate up" );
    }

}

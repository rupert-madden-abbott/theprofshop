#Very Important#

After cloning, copy the pre-commit file from docs to .git/hooks/ and then give
it the correct permissions. This is necessary for SASS to work correctly. Run 
the following from the application's directory:

    cp docs/pre-commit .git/hooks/pre-commit
    chmod 755 .git/hooks/pre-commit

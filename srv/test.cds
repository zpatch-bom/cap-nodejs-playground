using { pc.poc.db.test as my } from '../db/test.cds';

@path : '/service/test'
service test
{
    entity Foo as projection on my.Foo;
}

annotate test with @requires :
[
    'authenticated-user'
];

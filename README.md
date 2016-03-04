# hackTattooBack

create an Client:  post
						:3000/registerClient
										{
										"name": "myname",
										"password": "mypassword",
										"email": "myemail"
										}
response:
{
  "id": 2,
  "name": "myclient2",
  "email": "myemail2@gmail.com",
  "password_digest": "$2a$10$IBwdiixiHlXsCGyeRhZo..MO1QQ/zUX7YCfzeS4z8yY2PCRJR3D5W",
  "token": null,
  "created_at": "2016-03-03T23:50:04.063Z",
  "updated_at": "2016-03-03T23:50:04.063Z"
}


login an Client:  post
						:3000/loginClient
										{
										"name": "myname",
										"password": "mypassword",
										"email": "myemail"
										}
response:
{
  "id": 1,
  "name": "myclient",
  "email": "myemail@gmail.com",
  "password_digest": "$2a$10$G62yKnGhfG2oRO2RwQvuEOnHLmEHlN3EAXHG3a.Er.nVOVFjt7zM.",
  "token": "652c991a6e874705aa1822ce7f97d5b5",
  "created_at": "2016-03-03T23:43:08.000Z",
  "updated_at": "2016-03-03T23:43:32.437Z"
}


same goes for Employees


create an Employee:  post
						:3000/registerArtist
										{
										"name": "myname",
										"password": "mypassword",
										"email": "myemail"
										}
response:
{
  "id": 1,
  "name": "myartist",
  "email": "myemail@gmail.com",
  "password_digest": "$2a$10$tQXn.ob/m9bnPmRZl5sL3uBBO/jZC6OSYiuKWks.pgALBAb3rVD.i",
  "token": null,
  "admin": null,
  "created_at": "2016-03-04T00:10:17.455Z",
  "updated_at": "2016-03-04T00:10:17.455Z"
}

login an Employee:  post
						:3000/loginArtist
										{
										"name": "myname",
										"password": "mypassword",
										"email": "myemail"
										}
response:

{
  "id": 1,
  "name": "myartist",
  "email": "myemail@gmail.com",
  "password_digest": "$2a$10$tQXn.ob/m9bnPmRZl5sL3uBBO/jZC6OSYiuKWks.pgALBAb3rVD.i",
  "token": "efca370e36d84331ad0059f05326e8d1",
  "admin": null,
  "created_at": "2016-03-04T00:10:17.000Z",
  "updated_at": "2016-03-04T00:11:45.770Z"
}

see all employees: get
response:
[
  {
    "id": 1,
    "name": "myartist",
    "email": "myemail@gmail.com",
    "password_digest": "$2a$10$tQXn.ob/m9bnPmRZl5sL3uBBO/jZC6OSYiuKWks.pgALBAb3rVD.i",
    "token": "efca370e36d84331ad0059f05326e8d1",
    "admin": null,
    "created_at": "2016-03-04T00:10:17.000Z",
    "updated_at": "2016-03-04T00:11:45.000Z"
  }
]

create an employees admin:  post
						:3000/createAdmin
										{
										"name": "myname",
										"password": "mypassword",
										"email": "myemail"
										}
response:
{
  "id": 2,
  "name": "admin",
  "email": "admin@gmail.com",
  "password_digest": "$2a$10$lBGjZqlyluqDxtHWpB6cgO2rZJXH27ipZ2Juo0S3NMarOY9qs6xry",
  "token": null,
  "admin": true,
  "created_at": "2016-03-04T00:32:58.459Z",
  "updated_at": "2016-03-04T00:32:58.459Z"
}
Role.create(character_name:"Beauty")
Role.create(character_name:"Another Role")
Role.create(character_name:"Last Role")

Audition.create(
    actor: "Abel",
    location: "NY",
    phone: 6198831918,
    hired: false,
    role_id: 1
)
Audition.create(
    actor: "Daniela",
    location: "MX",
    phone: 6673203932,
    hired: true,
    role_id: 1
)
Audition.create(
    actor: "Xime",
    location: "IL",
    phone: 6198831918,
    hired: true,
    role_id: 1
)
Audition.create(
    actor: "Roger",
    location: "IL",
    phone: 6198831918,
    hired: true,
    role_id: 2
)
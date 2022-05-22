#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> &'static str {
    "Hello ErikXu!"
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index])
}

use serde::{Deserialize, Serialize};
use std::collections::HashMap;

// TODO: remove this class as it is a non-integration test related thing

#[derive(Serialize, Deserialize, Debug)]
pub struct Coords {
    pub x: f64,
    pub y: f64,
    pub z: f64,
}

#[derive(Serialize, Deserialize, Debug)]
pub struct MegaStruct {
    pub(crate) name: String,
    pub coords: Coords,
    pub props: HashMap<String, String>,
}

impl MegaStruct {
    pub fn to_json(&self) -> String {
        serde_json::to_string(self).unwrap()
    }

    pub fn from_json(json: &str) -> MegaStruct {
        serde_json::from_str(json).unwrap()
    }
}

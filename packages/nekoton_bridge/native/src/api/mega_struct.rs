use std::collections::HashMap;

use serde::{Deserialize, Serialize};

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

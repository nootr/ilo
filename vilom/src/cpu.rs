use crate::lexer::Token;

pub struct Cpu {}

impl Cpu {
    pub fn new() -> Self {
        Cpu {}
    }

    pub fn run(&self, _tokens: Vec<Token>) {
        println!("Hi!");
    }
}

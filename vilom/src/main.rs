mod cpu;
mod lexer;

use cpu::Cpu;
use lexer::tokenize;
use std::{env, fs};

fn main() {
    // Read file
    let args: Vec<String> = env::args().collect();

    if args.len() != 2 {
        panic!("Expecting one filename as argument");
    }

    let file_path = &args[1];
    let contents = fs::read_to_string(file_path).expect("Should have been able to read the file");

    // Tokenize file contents
    let tokens = tokenize(&contents).unwrap();

    // Feed tokens into virtual CPU
    let cpu = Cpu::new();
    cpu.run(tokens);
}

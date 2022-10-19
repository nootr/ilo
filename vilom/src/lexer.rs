use std::str::FromStr;

#[derive(Debug)]
pub enum Register {
    Rax,
    Rbx,
    Rcx,
    Rdx,
    R8,
    R9,
    R10,
    Rsi,
    Rdi,
}

impl FromStr for Register {
    type Err = ();

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        if s.len() < 2 {
            return Err(());
        }

        match &s[..2] {
            "r8" => return Ok(Register::R8),
            "r9" => return Ok(Register::R9),
            _ => {}
        }

        if s.len() < 3 {
            return Err(());
        }

        match &s[..3] {
            "rax" => Ok(Register::Rax),
            "rbx" => Ok(Register::Rbx),
            "rcx" => Ok(Register::Rcx),
            "rdx" => Ok(Register::Rdx),
            "rsi" => Ok(Register::Rsi),
            "rdi" => Ok(Register::Rdi),
            "r10" => Ok(Register::R10),
            _ => Err(()),
        }
    }
}

#[derive(Debug)]
pub enum Token {
    Comment,
    Global(String),
    Section(String),
    Push(Register),
    Pop(Register),
}

impl FromStr for Token {
    type Err = ();

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        let mut words = s.split(' ');
        match words.next() {
            Some(";") => Ok(Token::Comment),
            Some("global") => Ok(Token::Global(words.next().unwrap().to_string())),
            Some("section") => Ok(Token::Section(words.next().unwrap().to_string())),
            Some("push") => match words.next() {
                Some(register_name) => match Register::from_str(register_name) {
                    Ok(register) => Ok(Token::Push(register)),
                    _ => Err(()),
                },
                _ => Err(()),
            },
            Some("pop") => match words.next() {
                Some(register_name) => match Register::from_str(register_name) {
                    Ok(register) => Ok(Token::Pop(register)),
                    _ => Err(()),
                },
                _ => Err(()),
            },
            _ => Err(()),
        }
    }
}

pub fn tokenize(program: &str) -> Result<Vec<Token>, &str> {
    let mut tokens = Vec::new();

    for line in program.lines() {
        if let Ok(t) = Token::from_str(line.trim()) {
            tokens.push(t);
        }
    }

    println!("tokens: {:?}", tokens);
    Ok(tokens)
}

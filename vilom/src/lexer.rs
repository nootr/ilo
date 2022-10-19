use std::str::FromStr;

#[derive(Debug)]
pub enum Token {
    Global(String),
}

impl FromStr for Token {
    type Err = ();

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        let mut words = s.split(' ');
        match words.next() {
            Some("global") => Ok(Token::Global(words.next().unwrap().to_string())),
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

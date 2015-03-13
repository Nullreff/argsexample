#![feature(libc)]

extern crate libc;
use libc::{c_char, c_int};
use std::env::args;
use std::ffi::CString;

#[link(name = "printargs", kind= "static")]
extern {
    fn printargs(argc: c_int, argv: *const *const c_char);
}

fn main() {
    let arg_ptrs = args().map(|arg| CString::new(arg).unwrap().as_ptr())
                         .collect::<Vec<*const c_char>>();
    unsafe {
        printargs(arg_ptrs.len() as c_int, arg_ptrs.as_ptr());
    }
}


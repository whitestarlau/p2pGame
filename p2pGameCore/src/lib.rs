use std::os::raw::c_char;
use std::ffi::CString;

#[unsafe(no_mangle)]
pub extern "C" fn hello_from_rust() -> *const c_char {
    let s = CString::new("hello from rust dylib").unwrap();
    s.into_raw()
}

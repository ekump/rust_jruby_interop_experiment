#[no_mangle]
pub extern "system" fn Java_HelloWorld_helloFromRust(
    env: jni::JNIEnv,
    _class: jni::objects::JClass,
    input: jni::objects::JString,
) -> jni::sys::jstring {
    let input_str: String = env.get_string(input).expect("Couldn't get java string!").into();

    let response = format!("Hello from Rust, {}!", input_str);

    let output = env.new_string(response).expect("Couldn't create java string!");

    output.into_inner()
}

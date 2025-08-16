添加工具链：
```
rustup target add aarch64-linux-android  # Android
rustup target add x86_64-apple-ios       # iOS
rustup target add aarch64-apple-ios       # iOS
rustup target add aarch64-apple-ios-sim    # iOS m系列模拟器
rustup target add x86_64-pc-windows-msvc # Windows
```

android:
```
rustup target add aarch64-linux-android
# 编译命令
cargo build --target aarch64-linux-android --release
# 输出路径：target/aarch64-linux-android/release/libp2pGameCore.so
```

windows:
```
rustup target add x86_64-pc-windows-msvc
# 编译命令
cargo build --target x86_64-pc-windows-msvc --release
# 输出路径：target/x86_64-pc-windows-msvc/release/p2pGameCore.dll
```

ios:
```
rustup target add x86_64-apple-ios aarch64-apple-ios
# 通用库编译
cargo lipo --release
# 输出路径：target/universal/release/libp2pGameCore.a
```


注意,cargo lipo 等于封装了以下步骤：
```
cargo build --target x86_64-apple-ios
cargo build --target aarch64-apple-ios
cargo build --target aarch64-apple-ios-sim
lipo -create -output universal_lib.a x86_64_lib.a aarch64_lib.a
```

生成头文件：
```
cbindgen --config cbindgen.toml --output p2pGameCore.h
cbindgen --config cbindgen.toml --crate p2pGameCore --output p2pGameCore.h
```

单元测试：
```
cargo test test_run_p2p_game -- --nocapture
```
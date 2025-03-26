# Pokedex - iOS 宝可梦图鉴应用

一个使用 SwiftUI 开发的现代化宝可梦图鉴应用，展示了 iOS 开发中的最佳实践和高级技术特性。

## 技术亮点

### 1. 现代化架构设计
- 采用 MVVM 架构模式，实现了视图、业务逻辑和数据层的清晰分离
- 使用 `@Published` 和 `ObservableObject` 实现响应式数据流
- 遵循 SOLID 原则，确保代码的可维护性和可扩展性

### 2. 优雅的网络层实现
```swift
extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else { return nil }
        return data
    }
}
```
- 自定义 Data 扩展，优雅处理特殊 JSON 数据格式
- 使用 URLSession 进行异步网络请求
- 实现了优雅的错误处理机制

### 3. 类型安全的数据模型
```swift
struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}
```
- 使用 Swift 的类型系统确保数据安全
- 实现 `Decodable` 协议，支持 JSON 自动解码
- 采用 `Identifiable` 协议优化列表性能

### 4. 响应式状态管理
```swift
class PokemonViewModel: ObservableObject {
    @Published var pokemon = [Pokemon]()
    // ...
}
```
- 利用 SwiftUI 的 `@Published` 属性包装器实现响应式更新
- 实现了高效的状态管理和 UI 更新机制
- 确保数据变化时 UI 自动更新

### 5. 优雅的类型系统应用
```swift
func backgroundColor(forType type: String) -> UIColor {
    switch type {
    case "fire": return .systemRed
    case "poison": return .systemGreen
    // ...
    }
}
```
- 使用 Swift 的枚举和 switch 语句实现类型安全的颜色映射
- 展示了 Swift 强大的类型系统应用
- 代码简洁且易于维护

## 项目特点

- 🎨 现代化 UI 设计
- 🔄 流畅的动画效果
- 📱 适配各种 iOS 设备
- 🚀 高性能的数据加载
- 🔒 类型安全的代码实现

## 技术栈

- SwiftUI
- MVVM 架构
- Combine 框架
- Swift 5.0+
- iOS 15.0+

## 安装说明

1. 克隆项目
```bash
git clone https://github.com/yourusername/Pokedex.git
```

2. 打开项目
```bash
cd Pokedex
open Pokedex.xcodeproj
```

3. 运行项目
- 选择目标设备或模拟器
- 点击运行按钮或使用快捷键 Cmd + R

## 贡献指南

欢迎提交 Issue 和 Pull Request 来帮助改进这个项目。

## 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件 
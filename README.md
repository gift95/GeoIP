# GeoLite.mmdb 数据库仓库

本仓库自动同步 [MaxMind](https://www.maxmind.com) 官方的 GeoLite2 数据库。

## 📊 数据库信息

| 项目 | 详情 |
|------|------|
| **更新时间** | 2026.07.08 |
| **文件数量** | 2 个 |
| **包含文件** | GeoLite2-ASN.mmdb GeoLite2-Country.mmdb  |
| **更新周期** | 每7天自动更新 |

## 📥 下载方式

### Release 下载
- [📦 最新版本 (latest)](https://github.com/gift95/GeoIP/releases/tag/latest)
- [📂 所有版本](https://github.com/gift95/GeoIP/releases)

### 直接链接
- [`GeoLite2-ASN.mmdb`](https://github.com/gift95/GeoIP/releases/download/latest/GeoLite2-ASN.mmdb)
- [`GeoLite2-Country.mmdb`](https://github.com/gift95/GeoIP/releases/download/latest/GeoLite2-Country.mmdb)

## 🔄 自动更新机制

工作流每7天自动执行一次，流程如下：
1. 从 MaxMind 官方下载最新数据库
2. 验证文件完整性和有效性
3. 创建带日期标签的新 Release
4. 更新 `latest` 标签指向最新版本
5. 保留最近5个版本，自动清理旧版本

## ⚙️ 使用示例

### Nginx
```nginx
geoip2 /path/to/GeoLite2-Country.mmdb {
    $geoip2_country_code country iso_code;
}
```

### Python
```python
import geoip2.database

reader = geoip2.database.Reader('GeoLite2-Country.mmdb')
response = reader.country('8.8.8.8')
print(response.country.iso_code)
```

## 📄 许可证

本仓库的数据库文件遵循 MaxMind 官方的 [GeoLite2 最终用户许可协议](https://www.maxmind.com/en/geolite2/eula)。

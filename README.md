# touge

头歌实验（调试相关）答案与辅助脚本仓库。

本仓库用于集中管理各关卡的题面文本与配套拉取脚本，便于在实验环境中快速同步所需文件。

## 仓库说明

- `Source/`：存放各关卡题目文本及对应日志文件。
- `Scripts/`：存放与 `Source/` 一一对应的 shell 脚本，用于从 GitHub 或 Gitee 下载文件并移动到实验环境指定目录。

当前已包含：

- 课堂部分：`4.1.ketang-1`、`4.1.ketang-2`
- 课后部分：`4.1.kehou-1`、`4.1.kehou-2`、`4.1.kehou-3`

## 脚本用途

每个脚本的核心流程一致：

1. 根据参数选择下载站点（`Gitee` 或 `Github`，默认 `Gitee`）。
2. 下载对应关卡的题面文本和日志文件到 `/tmp/`。
3. 将题面移动到 `/data/workspace/myshixun/`。
4. 将日志移动到 `/root/`。

## 使用方式

在仓库根目录执行（示例）：

```bash
bash Scripts/4.1.ketang-1/4.1.ketang-1.sh
```

指定下载源为 GitHub：

```bash
bash Scripts/4.1.ketang-1/4.1.ketang-1.sh Github
```

默认下载源（不传参数）为：

```bash
Gitee
```

除直接执行 `Scripts/` 下的 `.sh` 文件外，也可以将对应脚本内容完整复制后直接粘贴到终端执行，效果一致。

## 环境要求

- Linux 环境
- 已安装 `bash` 与 `wget`
- 对以下路径有读写权限：
	- `/tmp/`
	- `/data/workspace/myshixun/`
	- `/root/`

## 注意事项

- 脚本会使用 `mv -f` 覆盖目标文件，请先确认是否需要备份。
- `4.1.kehou-2` 关卡使用的是 `dbg.log`，其他关卡使用 `gdb.log`。
- 若下载站点参数错误，脚本会报错并退出。

## 免责声明

本仓库内容仅用于学习交流，请遵守课程与平台相关规范，不用于任何违规用途。

.class public Lcom/unity3d/ads/device/Storage;
.super Lcom/unity3d/ads/misc/JsonStorage;
.source "Storage.java"


# instance fields
.field private _targetFileName:Ljava/lang/String;

.field private _type:Lcom/unity3d/ads/device/StorageManager$StorageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/device/StorageManager$StorageType;)V
    .locals 0
    .param p1, "targetFileName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/unity3d/ads/misc/JsonStorage;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized clearStorage()Z
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/ads/device/Storage;->clearData()V

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 64
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getType()Lcom/unity3d/ads/device/StorageManager$StorageType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    return-object v0
.end method

.method public declared-synchronized initStorage()Z
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/ads/device/Storage;->readStorage()Z

    .line 47
    invoke-super {p0}, Lcom/unity3d/ads/misc/JsonStorage;->initData()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readStorage()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 27
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->readFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 30
    .local v2, "fileData":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 32
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/unity3d/ads/device/Storage;->setData(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    const/4 v3, 0x1

    .line 42
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Error creating storage JSON"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileData":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized sendEvent(Lcom/unity3d/ads/device/StorageEvent;Ljava/lang/Object;)V
    .locals 6
    .param p1, "eventType"    # Lcom/unity3d/ads/device/StorageEvent;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x0

    .line 77
    .local v0, "success":Z
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-virtual {v5}, Lcom/unity3d/ads/device/StorageManager$StorageType;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-result v0

    .line 81
    :cond_0
    if-nez v0, :cond_1

    .line 82
    const-string v1, "Couldn\'t send storage event to WebApp"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized storageFileExists()Z
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 70
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeStorage()Z
    .locals 3

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0}, Lcom/unity3d/ads/device/Storage;->getData()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/unity3d/ads/device/Storage;->getData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unity3d/ads/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 60
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    .end local v0    # "f":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

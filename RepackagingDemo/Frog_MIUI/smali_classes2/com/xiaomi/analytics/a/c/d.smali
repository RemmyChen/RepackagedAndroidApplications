.class Lcom/xiaomi/analytics/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic dB:Lcom/xiaomi/analytics/a/c/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/a/c/c;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/xiaomi/analytics/a/c/d;->dB:Lcom/xiaomi/analytics/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 169
    const-string/jumbo v0, "Analytics-SysAnalytics"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/d;->dB:Lcom/xiaomi/analytics/a/c/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/c/c;->a(Lcom/xiaomi/analytics/a/c/c;Z)Z

    .line 171
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/d;->dB:Lcom/xiaomi/analytics/a/c/c;

    invoke-static {p2}, Lcom/miui/analytics/ICore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/analytics/ICore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/c/c;->a(Lcom/xiaomi/analytics/a/c/c;Lcom/miui/analytics/ICore;)Lcom/miui/analytics/ICore;

    .line 174
    const-string/jumbo v0, "Analytics-SysAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/a/c/d;->dB:Lcom/xiaomi/analytics/a/c/c;

    invoke-static {v2}, Lcom/xiaomi/analytics/a/c/c;->a(Lcom/xiaomi/analytics/a/c/c;)Lcom/miui/analytics/ICore;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/d;->dB:Lcom/xiaomi/analytics/a/c/c;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/c/c;->b(Lcom/xiaomi/analytics/a/c/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/d;->dB:Lcom/xiaomi/analytics/a/c/c;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/c/c;->b(Lcom/xiaomi/analytics/a/c/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "Analytics-SysAnalytics"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c/d;->dB:Lcom/xiaomi/analytics/a/c/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/c/c;->a(Lcom/xiaomi/analytics/a/c/c;Z)Z

    .line 165
    return-void
.end method

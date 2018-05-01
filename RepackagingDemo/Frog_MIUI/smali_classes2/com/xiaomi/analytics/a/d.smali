.class Lcom/xiaomi/analytics/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cO:Lcom/xiaomi/analytics/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/a/b;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 149
    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/a/b;->aD()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->d(Lcom/xiaomi/analytics/a/b;)V

    .line 151
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/b;->e(Lcom/xiaomi/analytics/a/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->f(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/xiaomi/analytics/a/c/a;->init()V

    .line 159
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v1, "Analytics-sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sys version = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/b;->g(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v2}, Lcom/xiaomi/analytics/a/b;->h(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v2

    .line 166
    if-eqz v1, :cond_2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v4

    invoke-interface {v1}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/analytics/a/j;->b(Lcom/xiaomi/analytics/a/j;)I

    move-result v4

    if-lez v4, :cond_8

    .line 168
    :cond_2
    const-string/jumbo v1, "Analytics-sdk"

    const-string/jumbo v4, "use local analytics."

    invoke-static {v1, v4}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 173
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 174
    invoke-interface {v1}, Lcom/xiaomi/analytics/a/c/a;->init()V

    .line 177
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/analytics/a/j;->b(Lcom/xiaomi/analytics/a/j;)I

    move-result v2

    if-lez v2, :cond_9

    .line 179
    :cond_5
    const-string/jumbo v0, "Analytics-sdk"

    const-string/jumbo v2, "use dex analytics."

    invoke-static {v0, v2}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 185
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/xiaomi/analytics/a/c/a;->aC()Lcom/xiaomi/analytics/a/j;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/analytics/a/a;->cr:Lcom/xiaomi/analytics/a/j;

    invoke-virtual {v1, v2}, Lcom/xiaomi/analytics/a/j;->b(Lcom/xiaomi/analytics/a/j;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 186
    iget-object v1, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;Lcom/xiaomi/analytics/a/c/a;)Lcom/xiaomi/analytics/a/c/a;

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->i(Lcom/xiaomi/analytics/a/b;)V

    .line 190
    iget-object v0, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/b;->b(Lcom/xiaomi/analytics/a/b;Lcom/xiaomi/analytics/a/c/a;)V

    .line 191
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    iget-object v0, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0, v6}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;Z)Z

    .line 196
    :goto_2
    return-void

    .line 170
    :cond_8
    if-eqz v1, :cond_3

    .line 171
    :try_start_2
    const-string/jumbo v2, "Analytics-sdk"

    const-string/jumbo v4, "use assets analytics."

    invoke-static {v2, v4}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    iget-object v0, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0, v6}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;Z)Z

    goto :goto_2

    .line 181
    :cond_9
    if-eqz v0, :cond_6

    .line 182
    :try_start_4
    const-string/jumbo v1, "Analytics-sdk"

    const-string/jumbo v2, "use sys analytics."

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 194
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/analytics/a/d;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1, v6}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;Z)Z

    throw v0
.end method

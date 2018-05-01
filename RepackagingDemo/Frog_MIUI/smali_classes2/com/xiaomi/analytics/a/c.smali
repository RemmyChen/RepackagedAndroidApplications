.class Lcom/xiaomi/analytics/a/c;
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
    .line 132
    iput-object p1, p0, Lcom/xiaomi/analytics/a/c;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/a/c;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/a/c;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->b(Lcom/xiaomi/analytics/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/a/f;->ae(Landroid/content/Context;)Lcom/xiaomi/analytics/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/a/f;->aM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/c;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/b;->c(Lcom/xiaomi/analytics/a/b;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "analytics.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/xiaomi/analytics/a/c;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/b;->b(Lcom/xiaomi/analytics/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/analytics/a/f;->ae(Landroid/content/Context;)Lcom/xiaomi/analytics/a/f;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/a/f;->x(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/xiaomi/analytics/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/analytics/a/f$c;


# instance fields
.field final synthetic cO:Lcom/xiaomi/analytics/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/a/b;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/xiaomi/analytics/a/e;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/analytics/a/e;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    if-nez v0, :cond_2

    .line 274
    const-string/jumbo v0, "Analytics-sdk"

    const-string/jumbo v1, "download finished, use new analytics."

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/xiaomi/analytics/a/e;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->h(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lcom/xiaomi/analytics/a/c/a;->init()V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/analytics/a/e;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1, v0}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;Lcom/xiaomi/analytics/a/c/a;)Lcom/xiaomi/analytics/a/c/a;

    .line 280
    iget-object v0, p0, Lcom/xiaomi/analytics/a/e;->cO:Lcom/xiaomi/analytics/a/b;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/e;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v1}, Lcom/xiaomi/analytics/a/b;->a(Lcom/xiaomi/analytics/a/b;)Lcom/xiaomi/analytics/a/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/a/b;->b(Lcom/xiaomi/analytics/a/b;Lcom/xiaomi/analytics/a/c/a;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/analytics/a/e;->cO:Lcom/xiaomi/analytics/a/b;

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b;->b(Lcom/xiaomi/analytics/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/a/b/b;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.class Lcom/xiaomi/ad/internal/common/module/d$c;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/internal/common/module/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private aB:Z

.field private aG:Lcom/xiaomi/ad/internal/common/module/d$b;

.field private aH:I

.field final synthetic ax:Lcom/xiaomi/ad/internal/common/module/d;

.field private az:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/ad/internal/common/module/d;Lcom/xiaomi/ad/internal/common/module/d$b;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 269
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->ax:Lcom/xiaomi/ad/internal/common/module/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    .line 264
    iput-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->az:Ljava/lang/String;

    .line 265
    iput v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aH:I

    .line 267
    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aB:Z

    .line 270
    iput-object p2, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    .line 271
    iput-object p3, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->az:Ljava/lang/String;

    .line 272
    iput p4, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aH:I

    .line 273
    return-void
.end method


# virtual methods
.method public S()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aB:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 277
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d$b;->d(Lcom/xiaomi/ad/internal/common/module/d$b;)Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->ax:Lcom/xiaomi/ad/internal/common/module/d;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/xiaomi/ad/internal/common/module/d;->b(Ljava/lang/String;J)V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->ax:Lcom/xiaomi/ad/internal/common/module/d;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d;->a(Lcom/xiaomi/ad/internal/common/module/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/i;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->ax:Lcom/xiaomi/ad/internal/common/module/d;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/xiaomi/ad/internal/common/module/d;->b(Ljava/lang/String;J)V

    goto :goto_0

    .line 285
    :cond_3
    const-string/jumbo v0, "ModuleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdaterThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d$b;->d(Lcom/xiaomi/ad/internal/common/module/d$b;)Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aH:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;->f(I)Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;

    move-result-object v5

    .line 288
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d$b;->d(Lcom/xiaomi/ad/internal/common/module/d$b;)Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->ax:Lcom/xiaomi/ad/internal/common/module/d;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lcom/xiaomi/ad/internal/common/module/d;->b(Ljava/lang/String;J)V

    .line 293
    :goto_1
    if-eqz v5, :cond_1

    iget-object v0, v5, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;->aP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Lcom/xiaomi/ad/internal/common/module/d$a;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->ax:Lcom/xiaomi/ad/internal/common/module/d;

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/module/d;->a(Lcom/xiaomi/ad/internal/common/module/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v5, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;->aP:Ljava/lang/String;

    iget-object v3, v5, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;->ay:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->az:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;->aA:Z

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/ad/internal/common/module/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/module/d$a;->run()V

    .line 297
    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/module/d$a;->a(Lcom/xiaomi/ad/internal/common/module/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aB:Z

    goto :goto_0

    .line 291
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->ax:Lcom/xiaomi/ad/internal/common/module/d;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/d$c;->aG:Lcom/xiaomi/ad/internal/common/module/d$b;

    invoke-static {v1}, Lcom/xiaomi/ad/internal/common/module/d$b;->c(Lcom/xiaomi/ad/internal/common/module/d$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/ad/internal/common/module/d;->b(Ljava/lang/String;J)V

    goto :goto_1
.end method

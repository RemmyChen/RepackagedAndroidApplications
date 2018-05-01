.class public Lcom/xiaomi/ad/internal/common/b/a/b;
.super Ljava/lang/Object;
.source "AdUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.ad"

.field private static final TAG:Ljava/lang/String; = "AdUncaughtExceptionHandler"

.field private static final bw:Ljava/lang/String; = "UncatchException"


# instance fields
.field private bx:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/b/a/b;->bx:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 33
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.xiaomi.ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/xiaomi/ad/internal/common/g;->r()Lcom/xiaomi/ad/internal/common/g;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/ad/common/SdkConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "AdUncaughtExceptionHandler"

    const-string/jumbo v3, "UncatchException"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/xiaomi/ad/internal/common/g;->trackException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/b/a/b;->bx:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/b/a/b;->bx:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 42
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 48
    :cond_3
    invoke-static {}, Lcom/xiaomi/ad/internal/common/g;->r()Lcom/xiaomi/ad/internal/common/g;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/ad/common/SdkConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "AdUncaughtExceptionHandler"

    const-string/jumbo v3, "UncatchException"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/xiaomi/ad/internal/common/g;->trackException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

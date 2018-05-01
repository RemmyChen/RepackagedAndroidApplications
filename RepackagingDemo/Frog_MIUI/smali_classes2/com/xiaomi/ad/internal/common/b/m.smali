.class public Lcom/xiaomi/ad/internal/common/b/m;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# static fields
.field public static bj:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/xiaomi/ad/internal/common/b/a/a;

    invoke-direct {v0}, Lcom/xiaomi/ad/internal/common/b/a/a;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/internal/common/b/m;->bj:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

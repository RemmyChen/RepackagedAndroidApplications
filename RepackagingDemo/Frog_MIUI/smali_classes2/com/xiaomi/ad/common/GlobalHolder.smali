.class public Lcom/xiaomi/ad/common/GlobalHolder;
.super Ljava/lang/Object;
.source "GlobalHolder.java"


# static fields
.field private static volatile sAppContext:Landroid/content/Context;

.field private static sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/ad/common/GlobalHolder;->sUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/xiaomi/ad/common/GlobalHolder;->sAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/xiaomi/ad/common/GlobalHolder;->sUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    sput-object p0, Lcom/xiaomi/ad/common/GlobalHolder;->sAppContext:Landroid/content/Context;

    .line 21
    return-void
.end method

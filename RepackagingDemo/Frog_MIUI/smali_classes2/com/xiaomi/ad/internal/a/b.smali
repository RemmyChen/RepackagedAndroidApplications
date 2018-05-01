.class public Lcom/xiaomi/ad/internal/a/b;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Connection"


# instance fields
.field private by:Lcom/xiaomi/ad/internal/a/a;

.field private bz:Ljava/lang/Runnable;

.field private mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/ad/common/api/AdRequest;Lcom/xiaomi/ad/internal/a/a;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/xiaomi/ad/internal/a/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/internal/a/c;-><init>(Lcom/xiaomi/ad/internal/a/b;)V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/a/b;->bz:Ljava/lang/Runnable;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/ad/internal/a/b;->mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

    .line 20
    iput-object p3, p0, Lcom/xiaomi/ad/internal/a/b;->by:Lcom/xiaomi/ad/internal/a/a;

    .line 21
    iput-object p1, p0, Lcom/xiaomi/ad/internal/a/b;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/internal/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/b;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/xiaomi/ad/common/api/AdResponse;)V
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "handleAdResponse "

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/ad/common/api/AdResponse;->mData:Lcom/xiaomi/ad/common/pojo/AdIntent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/api/AdResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p1, Lcom/xiaomi/ad/common/api/AdResponse;->mData:Lcom/xiaomi/ad/common/pojo/AdIntent;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/AdIntent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/a/b;->onAdInfo(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 54
    :cond_0
    if-eqz p1, :cond_1

    .line 55
    iget v0, p1, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    invoke-static {v0}, Lcom/xiaomi/ad/common/pojo/AdError;->valueOf(I)Lcom/xiaomi/ad/common/pojo/AdError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/a/b;->b(Lcom/xiaomi/ad/common/pojo/AdError;)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/internal/a/b;->b(Lcom/xiaomi/ad/common/pojo/AdError;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/ad/internal/a/b;Lcom/xiaomi/ad/common/api/AdResponse;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/internal/a/b;->a(Lcom/xiaomi/ad/common/api/AdResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/ad/internal/a/b;Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/internal/a/b;->b(Lcom/xiaomi/ad/common/pojo/AdError;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/ad/internal/a/b;)Lcom/xiaomi/ad/common/api/AdRequest;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/b;->mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

    return-object v0
.end method

.method private b(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/b;->by:Lcom/xiaomi/ad/internal/a/a;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/b;->by:Lcom/xiaomi/ad/internal/a/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/internal/a/a;->onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 66
    :cond_0
    return-void
.end method

.method private onAdInfo(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/b;->by:Lcom/xiaomi/ad/internal/a/a;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaomi/ad/internal/a/b;->by:Lcom/xiaomi/ad/internal/a/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/internal/a/a;->onAdInfo(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/xiaomi/ad/internal/common/b/m;->bj:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/a/b;->bz:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

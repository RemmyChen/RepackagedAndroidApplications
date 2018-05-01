.class public Lcom/xiaomi/ad/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdListener:Lcom/xiaomi/ad/internal/a/a;

.field private mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

.field private mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

.field private mContext:Landroid/content/Context;

.field private mNativeAdInfoRequestListener:Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/xiaomi/ad/NativeAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/NativeAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_NATIVE:Lcom/xiaomi/ad/common/pojo/AdType;

    iput-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mUIHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/xiaomi/ad/NativeAd$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/NativeAd$1;-><init>(Lcom/xiaomi/ad/NativeAd;)V

    iput-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mAdListener:Lcom/xiaomi/ad/internal/a/a;

    .line 33
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAd;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/xiaomi/ad/common/api/AdRequest;

    invoke-direct {v0}, Lcom/xiaomi/ad/common/api/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/NativeAd;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/xiaomi/ad/NativeAd;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/ad/NativeAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/NativeAd;Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/NativeAd;->onAdErrorOnUI(Lcom/xiaomi/ad/common/pojo/AdError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaomi/ad/NativeAd;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/NativeAd;->onAdListLoadedOnUI(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaomi/ad/NativeAd;)Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mNativeAdInfoRequestListener:Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    return-object v0
.end method

.method private onAdErrorOnUI(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/NativeAd$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/NativeAd$2;-><init>(Lcom/xiaomi/ad/NativeAd;Lcom/xiaomi/ad/common/pojo/AdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method private onAdListLoadedOnUI(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/common/pojo/NativeAdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Lcom/xiaomi/ad/NativeAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "post"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/ad/NativeAd$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/ad/NativeAd$3;-><init>(Lcom/xiaomi/ad/NativeAd;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method private requestAd()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/xiaomi/ad/internal/a/b;

    iget-object v1, p0, Lcom/xiaomi/ad/NativeAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/ad/NativeAd;->mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

    iget-object v3, p0, Lcom/xiaomi/ad/NativeAd;->mAdListener:Lcom/xiaomi/ad/internal/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/ad/internal/a/b;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/common/api/AdRequest;Lcom/xiaomi/ad/internal/a/a;)V

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/a/b;->connect()V

    .line 51
    return-void
.end method


# virtual methods
.method public requestAd(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

    iget-object v1, p0, Lcom/xiaomi/ad/NativeAd;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/common/api/AdRequest;->setAdType(Lcom/xiaomi/ad/common/pojo/AdType;)Lcom/xiaomi/ad/common/api/AdRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/ad/common/api/AdRequest;->setPositionId(Ljava/lang/String;)Lcom/xiaomi/ad/common/api/AdRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/ad/common/api/AdRequest;->setAdCount(I)Lcom/xiaomi/ad/common/api/AdRequest;

    .line 46
    invoke-direct {p0}, Lcom/xiaomi/ad/NativeAd;->requestAd()V

    .line 47
    return-void
.end method

.method public setNativeAdListener(Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)Lcom/xiaomi/ad/NativeAd;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAd;->mNativeAdInfoRequestListener:Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    .line 55
    return-object p0
.end method

.method public setOrientation(I)Lcom/xiaomi/ad/NativeAd;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

    invoke-virtual {v0, p1}, Lcom/xiaomi/ad/common/api/AdRequest;->setOrientation(I)Lcom/xiaomi/ad/common/api/AdRequest;

    .line 60
    return-object p0
.end method

.method public setTimeout(I)Lcom/xiaomi/ad/NativeAd;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd;->mAdRequest:Lcom/xiaomi/ad/common/api/AdRequest;

    invoke-virtual {v0, p1}, Lcom/xiaomi/ad/common/api/AdRequest;->setTimeout(I)V

    .line 65
    return-object p0
.end method

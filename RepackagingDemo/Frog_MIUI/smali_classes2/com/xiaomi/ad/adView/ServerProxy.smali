.class Lcom/xiaomi/ad/adView/ServerProxy;
.super Ljava/lang/Object;
.source "ServerProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;


# instance fields
.field private mAdCache:Lcom/xiaomi/ad/cache/AdCache;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/xiaomi/ad/adView/ServerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/adView/ServerProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Lcom/xiaomi/ad/cache/AdCache;->a()Lcom/xiaomi/ad/cache/AdCache;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mAdCache:Lcom/xiaomi/ad/cache/AdCache;

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/xiaomi/ad/adView/ServerProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/adView/ServerProxy;)Lcom/xiaomi/ad/cache/AdCache;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mAdCache:Lcom/xiaomi/ad/cache/AdCache;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/adView/ServerProxy;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/xiaomi/ad/adView/ServerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/adView/ServerProxy;->sServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/xiaomi/ad/adView/ServerProxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/adView/ServerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/ad/adView/ServerProxy;->sServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    .line 31
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/adView/ServerProxy;->sServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestAdFromCache(Ljava/lang/String;ILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)Z
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/ad/adView/ServerProxy;->getAdsFromServerCache(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p3, v0}, Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;->onAdInfoRequestFinish(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lcom/xiaomi/ad/adView/ServerProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestAdFromCache e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public containAdFromServerCache(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mAdCache:Lcom/xiaomi/ad/cache/AdCache;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/ad/cache/AdCache;->a(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getAdFromServerCache(Ljava/lang/String;J)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;
    .locals 2

    .prologue
    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mAdCache:Lcom/xiaomi/ad/cache/AdCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/ad/cache/AdCache;->a(Ljava/lang/String;J)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdIdsFromServerCache(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/NativeAdInfoIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mAdCache:Lcom/xiaomi/ad/cache/AdCache;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/ad/cache/AdCache;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdsFromServerCache(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/common/pojo/NativeAdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mAdCache:Lcom/xiaomi/ad/cache/AdCache;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/ad/cache/AdCache;->c(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public requestAdRealTime(Ljava/lang/String;Lcom/xiaomi/ad/common/pojo/AdType;IIILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p1, p3, p6}, Lcom/xiaomi/ad/adView/ServerProxy;->requestAdFromCache(Ljava/lang/String;ILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/xiaomi/ad/NativeAd;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/ServerProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/xiaomi/ad/NativeAd;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;)V

    .line 56
    invoke-virtual {v0, p6}, Lcom/xiaomi/ad/NativeAd;->setNativeAdListener(Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)Lcom/xiaomi/ad/NativeAd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/xiaomi/ad/NativeAd;->setOrientation(I)Lcom/xiaomi/ad/NativeAd;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaomi/ad/NativeAd;->setTimeout(I)Lcom/xiaomi/ad/NativeAd;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/xiaomi/ad/NativeAd;->requestAd(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public requestAdUsingCache(Ljava/lang/String;Lcom/xiaomi/ad/common/pojo/AdType;IIILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)V
    .locals 7

    .prologue
    .line 74
    invoke-direct {p0, p1, p3, p6}, Lcom/xiaomi/ad/adView/ServerProxy;->requestAdFromCache(Ljava/lang/String;ILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v6, Lcom/xiaomi/ad/adView/ServerProxy$1;

    invoke-direct {v6, p0, p6, p1}, Lcom/xiaomi/ad/adView/ServerProxy$1;-><init>(Lcom/xiaomi/ad/adView/ServerProxy;Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 90
    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/ad/adView/ServerProxy;->requestAdRealTime(Ljava/lang/String;Lcom/xiaomi/ad/common/pojo/AdType;IIILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)V

    goto :goto_0
.end method

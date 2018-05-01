.class public Lcom/xiaomi/ad/adView/StandardNewsFeedAd;
.super Ljava/lang/Object;
.source "StandardNewsFeedAd.java"


# static fields
.field private static final KEY_CONTAINER_WIDTH:Ljava/lang/String; = "containerWidth"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPosition:Ljava/lang/String;

.field private mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mContext:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/xiaomi/ad/adView/ServerProxy;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/adView/ServerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/ad/adView/StandardNewsFeedAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mPosition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/adView/StandardNewsFeedAd;Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->handleEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V

    return-void
.end method

.method private handleEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method


# virtual methods
.method public buildViewAsync(Lcom/xiaomi/ad/NativeAdInfoIndex;ILcom/xiaomi/ad/AdListener;)V
    .locals 6

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lcom/xiaomi/ad/NativeAdView;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_STANDARD_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/ad/NativeAdView;-><init>(Landroid/content/Context;Lcom/xiaomi/ad/common/pojo/AdType;)V

    .line 93
    new-instance v1, Lcom/xiaomi/ad/adView/StandardNewsFeedAd$2;

    invoke-direct {v1, p0, v0, p3}, Lcom/xiaomi/ad/adView/StandardNewsFeedAd$2;-><init>(Lcom/xiaomi/ad/adView/StandardNewsFeedAd;Lcom/xiaomi/ad/NativeAdView;Lcom/xiaomi/ad/AdListener;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/NativeAdView;->setAdListener(Lcom/xiaomi/ad/AdListener;)V

    .line 118
    iget-object v1, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    iget-object v2, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mPosition:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/ad/NativeAdInfoIndex;->getAdId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/ad/adView/ServerProxy;->getAdFromServerCache(Ljava/lang/String;J)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    move-result-object v1

    .line 119
    if-nez v1, :cond_0

    .line 120
    sget-object v0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Your ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/ad/NativeAdInfoIndex;->getAdId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " out of validity, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "you need to remove the useless response and requestAd to get new ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v2, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Your ad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/xiaomi/ad/NativeAdInfoIndex;->getAdId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "is available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string/jumbo v3, "containerWidth"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/NativeAdView;->render(Lcom/xiaomi/ad/common/pojo/NativeAdInfo;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buildView e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestAd(Ljava/lang/String;ILcom/xiaomi/ad/NativeAdListener;)V
    .locals 7

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : positionId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p3, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal Argument : listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    const/16 v0, 0xa

    if-lt p2, v0, :cond_2

    .line 53
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "the num of request should not exceed 10!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    iput-object p1, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mPosition:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/ad/adView/ServerProxy;->containAdFromServerCache(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    sget-object v0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "real time request"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mPosition:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/ad/common/pojo/AdType;->AD_STANDARD_NEWSFEED:Lcom/xiaomi/ad/common/pojo/AdType;

    const/4 v4, 0x0

    sget v5, Lcom/xiaomi/ad/common/api/AdRequest;->DEFAULT_TIME_OUT:I

    new-instance v6, Lcom/xiaomi/ad/adView/StandardNewsFeedAd$1;

    invoke-direct {v6, p0, p3, p2}, Lcom/xiaomi/ad/adView/StandardNewsFeedAd$1;-><init>(Lcom/xiaomi/ad/adView/StandardNewsFeedAd;Lcom/xiaomi/ad/NativeAdListener;I)V

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/ad/adView/ServerProxy;->requestAdUsingCache(Ljava/lang/String;Lcom/xiaomi/ad/common/pojo/AdType;IIILcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_3
    sget-object v0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cache request"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mServerProxy:Lcom/xiaomi/ad/adView/ServerProxy;

    iget-object v1, p0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->mPosition:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/xiaomi/ad/adView/ServerProxy;->getAdIdsFromServerCache(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    invoke-interface {p3, v0}, Lcom/xiaomi/ad/NativeAdListener;->onNativeInfoSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 84
    :cond_4
    sget-object v0, Lcom/xiaomi/ad/adView/StandardNewsFeedAd;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cache is valid but can\'t enough adInfos?"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdError;->ERROR_NO_AD:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-interface {p3, v0}, Lcom/xiaomi/ad/NativeAdListener;->onNativeInfoFail(Lcom/xiaomi/ad/common/pojo/AdError;)V

    goto :goto_0
.end method

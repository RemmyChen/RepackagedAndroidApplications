.class public Lcom/google/utils/XmApi;
.super Ljava/lang/Object;
.source "XmApi.java"

# interfaces
.implements Lcom/xiaomi/ad/AdListener;


# static fields
.field public static TAG:Ljava/lang/String;

.field static interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

.field public static isFirstStart:Z

.field public static isInterstitialAdShowed:Z

.field public static isJiShuOnResume:Z

.field public static isPortrait:Z

.field private static mActivity:Landroid/app/Activity;

.field public static timeinterval:J

.field public static timestmp:J


# instance fields
.field private mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    const-string/jumbo v0, "xyz_wsyzg"

    sput-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    .line 40
    sput-boolean v1, Lcom/google/utils/XmApi;->isFirstStart:Z

    .line 42
    sput-boolean v2, Lcom/google/utils/XmApi;->isPortrait:Z

    .line 44
    sput-boolean v2, Lcom/google/utils/XmApi;->isJiShuOnResume:Z

    .line 46
    sput-boolean v1, Lcom/google/utils/XmApi;->isInterstitialAdShowed:Z

    .line 151
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/google/utils/XmApi;->timestmp:J

    .line 152
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/google/utils/XmApi;->timeinterval:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "interstitialAd"    # Lcom/xiaomi/ad/adView/InterstitialAd;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    .line 148
    iput-object p2, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    .line 149
    sput-object p1, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    .line 150
    return-void
.end method

.method private static buildLogStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v1, "sbuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    sget-boolean v2, Lcom/google/utils/XmParms;->appCreate:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/google/utils/XmParms;->appAttach:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/google/utils/XmParms;->launchResume:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/google/utils/XmParms;->launchPause:Z

    if-eqz v2, :cond_0

    .line 334
    const-string/jumbo v2, "callback ok"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :goto_0
    const-string/jumbo v2, "pkgname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "appid : "

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->APP_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "position_id : "

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "splash_id : "

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "umeng_key : "

    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "umeng_channel : "

    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->UMENG_CHANNEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "debug : "

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/google/utils/XmParms;->isdebug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    sget-object v2, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 336
    :cond_0
    const-string/jumbo v2, "callback failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static first_show(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 256
    sget-boolean v0, Lcom/google/utils/XmApi;->isFirstStart:Z

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmApi;->isFirstStart:Z

    .line 259
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->show()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/utils/XmApi;

    sget-object v3, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, p0, v3}, Lcom/google/utils/XmApi;-><init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    .line 264
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/utils/XmApi$1;

    invoke-direct {v1}, Lcom/google/utils/XmApi$1;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static loadProperities(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 108
    .local v1, "pro":Ljava/util/Properties;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "pro.properties"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 109
    const-string/jumbo v2, "app_id"

    sget-object v3, Lcom/google/utils/XmParms;->APP_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->APP_ID:Ljava/lang/String;

    .line 110
    const-string/jumbo v2, "banner_id"

    sget-object v3, Lcom/google/utils/XmParms;->BANNER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->BANNER_ID:Ljava/lang/String;

    .line 111
    const-string/jumbo v2, "video_id"

    sget-object v3, Lcom/google/utils/XmParms;->VIDEO_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->VIDEO_ID:Ljava/lang/String;

    .line 113
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "needBanner"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/utils/XmParms;->needBanner:Z

    .line 115
    :cond_0
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "isBannerTop"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/utils/XmParms;->isBannerTop:Z

    .line 116
    :cond_1
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "isBannerCanClose"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/utils/XmParms;->isBannerCanClose:Z

    .line 117
    :cond_2
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "isBannerAutoHide"

    const-string/jumbo v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/utils/XmParms;->isBannerAutoHide:Z

    .line 118
    :cond_3
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "isADCover"

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/utils/XmParms;->isADCover:Z

    .line 119
    :cond_4
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "isHengPin"

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/utils/XmParms;->isHengPin:Z

    .line 121
    :cond_5
    sget-boolean v2, Lcom/google/utils/XmParms;->isHengPin:Z

    if-nez v2, :cond_6

    .line 123
    const-string/jumbo v2, "position_id_splash_h"

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    .line 124
    const-string/jumbo v2, "position_id"

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    .line 133
    :goto_0
    const-string/jumbo v2, "pkgname"

    sget-object v3, Lcom/google/utils/XmParms;->pkgname:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->pkgname:Ljava/lang/String;

    .line 134
    const-string/jumbo v2, "launcher"

    sget-object v3, Lcom/google/utils/XmParms;->launcher:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->launcher:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->UMENG_CHANNEL:Ljava/lang/String;

    .line 136
    const-string/jumbo v2, "umeng_key"

    sget-object v3, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    .line 143
    .end local v1    # "pro":Ljava/util/Properties;
    :goto_1
    return-void

    .line 128
    .restart local v1    # "pro":Ljava/util/Properties;
    :cond_6
    const-string/jumbo v2, "position_id_splash"

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    .line 129
    const-string/jumbo v2, "position_id_h"

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v1    # "pro":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static needWriteLog(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const-string/jumbo v1, "demo.ad.xiaomi.com.logwatcher"

    .line 350
    .local v1, "logwatcherpkg":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 351
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 353
    .local v2, "needLog":Z
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    const/4 v2, 0x1

    .line 358
    :goto_0
    return v2

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static onAppAttachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmParms;->appAttach:Z

    .line 99
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public static onAppCreate(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/utils/XmApi;->loadProperities(Landroid/content/Context;)V

    .line 51
    sget-boolean v1, Lcom/google/utils/XmParms;->appCreate:Z

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;

    sget-object v1, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    sget-object v2, Lcom/google/utils/XmParms;->UMENG_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "umconfig":Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
    const-string/jumbo v1, "MobclickAgentxyz"

    sget-object v2, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string/jumbo v1, "MobclickAgentxyz"

    sget-object v2, Lcom/google/utils/XmParms;->UMENG_CHANNEL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v1, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    const-string/jumbo v2, "582a6f4665b6d66c2800008d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "umeng key error !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v1, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "umeng key error !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v1, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "umeng key error !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v1, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "umeng key error !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "umeng key error !!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    .line 78
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/utils/XmParms;->appCreate:Z

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/utils/XmParms;->APP_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/ad/AdSdk;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "xyz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/utils/XmParms;->APP_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static onLauncherCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 249
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmParms;->launchCreate:Z

    .line 253
    return-void
.end method

.method public static onLauncherDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 324
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmParms;->launchDestroy:Z

    .line 325
    invoke-static {p0}, Lcom/google/utils/XmApi;->write2File(Landroid/content/Context;)V

    .line 326
    return-void
.end method

.method public static onLauncherPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 313
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmParms;->launchPause:Z

    .line 314
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 315
    invoke-static {p0}, Lcom/google/utils/XmApi;->write2File(Landroid/content/Context;)V

    .line 316
    return-void
.end method

.method public static onLauncherResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 282
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmParms;->launchResume:Z

    .line 286
    invoke-static {p0}, Lcom/google/utils/XmApi;->showInterstitialAd(Landroid/app/Activity;)V

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/utils/XmApi;->timestmp:J

    .line 289
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 293
    invoke-static {p0}, Lcom/google/utils/XmApi;->first_show(Landroid/app/Activity;)V

    .line 294
    return-void
.end method

.method public static onLauncherStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 277
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmParms;->launchStart:Z

    .line 278
    return-void
.end method

.method public static onLauncherStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 319
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmParms;->launchStop:Z

    .line 320
    invoke-static {p0}, Lcom/google/utils/XmApi;->write2File(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method public static setOritation(I)V
    .locals 2
    .param p0, "orientation"    # I

    .prologue
    .line 90
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/utils/XmApi;->isPortrait:Z

    .line 93
    :cond_0
    const-string/jumbo v0, "xyz_id_splash_h"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public static showBanner(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 299
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 300
    .local v2, "tv":Landroid/widget/TextView;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 301
    const-string/jumbo v4, "\u6b63\u5728\u52a0\u8f7d........."

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 303
    .local v0, "flayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v3, "tvlayout":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 308
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 159
    sget-boolean v0, Lcom/google/utils/XmApi;->isInterstitialAdShowed:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/utils/XmApi;->isInterstitialAdShowed:Z

    .line 162
    new-instance v0, Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/ad/adView/InterstitialAd;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    sput-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    .line 163
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/utils/XmApi;

    sget-object v3, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, p0, v3}, Lcom/google/utils/XmApi;-><init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    .line 166
    :cond_0
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showInterstitalad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "XmParms.POSITION_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showInterstitalad---showed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaomi/ad/adView/InterstitialAd;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    sput-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    .line 174
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/utils/XmApi;

    sget-object v3, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, p0, v3}, Lcom/google/utils/XmApi;-><init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    .line 179
    const-string/jumbo v0, "ad_inter_show"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_inter_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string/jumbo v0, "ad_inter_request"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_inter_request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    sget-object v0, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/utils/XmApi;

    sget-object v3, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, p0, v3}, Lcom/google/utils/XmApi;-><init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    goto :goto_0
.end method

.method private static write2File(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    invoke-static {p0}, Lcom/google/utils/XmApi;->needWriteLog(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "pkgname":Ljava/lang/String;
    invoke-static {v6}, Lcom/google/utils/XmApi;->buildLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "log":Ljava/lang/String;
    const-string/jumbo v7, "/sdcard/Android/data/pkgname/xmparams.log"

    const-string/jumbo v8, "pkgname"

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "/"

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "logPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, "logFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 367
    .local v2, "logDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 368
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 370
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 371
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 374
    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v8, "utf-8"

    invoke-direct {v5, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 375
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 377
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    const-string/jumbo v7, "xyz_writelog"

    const-string/jumbo v8, "write log success"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "logDir":Ljava/io/File;
    .end local v3    # "logFile":Ljava/io/File;
    .end local v4    # "logPath":Ljava/lang/String;
    .end local v6    # "pkgname":Ljava/lang/String;
    :cond_2
    return-void

    .line 378
    .restart local v1    # "log":Ljava/lang/String;
    .restart local v2    # "logDir":Ljava/io/File;
    .restart local v3    # "logFile":Ljava/io/File;
    .restart local v4    # "logPath":Ljava/lang/String;
    .restart local v6    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAdError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 3
    .param p1, "adError"    # Lcom/xiaomi/ad/common/pojo/AdError;

    .prologue
    .line 191
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "ad_inter_error"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_inter_error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    return-void
.end method

.method public onAdEvent(Lcom/xiaomi/ad/common/pojo/AdEvent;)V
    .locals 6
    .param p1, "adEvent"    # Lcom/xiaomi/ad/common/pojo/AdEvent;

    .prologue
    .line 198
    :try_start_0
    iget v1, p1, Lcom/xiaomi/ad/common/pojo/AdEvent;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 201
    :pswitch_0
    sget-object v1, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ad skip!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v1, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "ad_inter_close"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ad_inter_close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget-object v1, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v2, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v3, Lcom/google/utils/XmApi;

    sget-object v4, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/google/utils/XmApi;->interstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v3, v4, v5}, Lcom/google/utils/XmApi;-><init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ad click!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v1, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "ad_inter_click"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    sget-object v1, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ad_inter_click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/utils/XmApi;->isJiShuOnResume:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ad is loaded : "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 228
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ad is ready : -Xmapi "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showInterstitalad inner-Xmapi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/utils/XmApi;

    sget-object v3, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, v3, v4}, Lcom/google/utils/XmApi;-><init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    .line 231
    iget-object v0, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/google/utils/XmApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showInterstitalad show 2-Xmapi----isJiShuOnResume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/google/utils/XmApi;->isJiShuOnResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-virtual {v0}, Lcom/xiaomi/ad/adView/InterstitialAd;->show()V

    .line 236
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/utils/XmApi;->isJiShuOnResume:Z

    .line 238
    sget-object v0, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "ad_inter_show"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_inter_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :goto_0
    return-void

    .line 241
    :cond_0
    sget-object v0, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "ad_inter_request"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ad_inter_request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    sget-object v1, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    new-instance v2, Lcom/google/utils/XmApi;

    sget-object v3, Lcom/google/utils/XmApi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/utils/XmApi;->mInterstitialAd:Lcom/xiaomi/ad/adView/InterstitialAd;

    invoke-direct {v2, v3, v4}, Lcom/google/utils/XmApi;-><init>(Landroid/app/Activity;Lcom/xiaomi/ad/adView/InterstitialAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/ad/adView/InterstitialAd;->requestAd(Ljava/lang/String;Lcom/xiaomi/ad/AdListener;)V

    goto :goto_0
.end method

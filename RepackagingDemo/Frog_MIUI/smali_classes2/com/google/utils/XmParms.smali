.class public Lcom/google/utils/XmParms;
.super Ljava/lang/Object;
.source "XmParms.java"


# static fields
.field public static APP_ID:Ljava/lang/String; = null

.field public static BANNER_ID:Ljava/lang/String; = null

.field public static POSITION_ID:Ljava/lang/String; = null

.field public static POSITION_ID_SPLASH:Ljava/lang/String; = null

.field public static UMENG_CHANNEL:Ljava/lang/String; = null

.field public static UMENG_KEY:Ljava/lang/String; = null

.field public static VIDEO_ID:Ljava/lang/String; = null

.field static appAttach:Z = false

.field static appCreate:Z = false

.field public static isADCover:Z = false

.field public static isBannerAutoHide:Z = false

.field public static isBannerCanClose:Z = false

.field public static isBannerTop:Z = false

.field public static isHengPin:Z = false

.field public static isVideReady:Z = false

.field public static isdebug:Z = false

.field static launchCreate:Z = false

.field static launchDestroy:Z = false

.field static launchPause:Z = false

.field static launchResume:Z = false

.field static launchStart:Z = false

.field static launchStop:Z = false

.field public static launcher:Ljava/lang/String; = null

.field public static needBanner:Z = false

.field public static pkgname:Ljava/lang/String; = null

.field public static sBuilder:Ljava/lang/StringBuilder; = null

.field public static showInterstitialSplash:Z = false

.field public static final umeng_event_banner_click:Ljava/lang/String; = "ad_banner_click"

.field public static final umeng_event_banner_show:Ljava/lang/String; = "ad_banner_show"

.field public static final umeng_event_inter_click:Ljava/lang/String; = "ad_inter_click"

.field public static final umeng_event_inter_close:Ljava/lang/String; = "ad_inter_close"

.field public static final umeng_event_inter_error:Ljava/lang/String; = "ad_inter_error"

.field public static final umeng_event_inter_request:Ljava/lang/String; = "ad_inter_request"

.field public static final umeng_event_inter_show:Ljava/lang/String; = "ad_inter_show"

.field public static final umeng_event_splash_click:Ljava/lang/String; = "ad_splash_click"

.field public static final umeng_event_splash_close:Ljava/lang/String; = "ad_splash_close"

.field public static final umeng_event_splash_error:Ljava/lang/String; = "ad_splash_error"

.field public static final umeng_event_splash_request:Ljava/lang/String; = "ad_splash_request"

.field public static final umeng_event_splash_show:Ljava/lang/String; = "ad_splash_show"

.field public static final umeng_event_video_click:Ljava/lang/String; = "ad_video_click"

.field public static final umeng_event_video_show:Ljava/lang/String; = "ad_video_show"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9
    const-string/jumbo v0, "2882303761517521533"

    sput-object v0, Lcom/google/utils/XmParms;->APP_ID:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "0cfccfba30967d77ccc8e5a9fda3b3bc"

    sput-object v0, Lcom/google/utils/XmParms;->POSITION_ID:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, "a51b35db0bd342732b8c42b85e613959"

    sput-object v0, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "54159a7b3571eb2315e19c00e071027b"

    sput-object v0, Lcom/google/utils/XmParms;->BANNER_ID:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "1802050001"

    sput-object v0, Lcom/google/utils/XmParms;->VIDEO_ID:Ljava/lang/String;

    .line 15
    sput-boolean v1, Lcom/google/utils/XmParms;->isdebug:Z

    .line 17
    sput-boolean v1, Lcom/google/utils/XmParms;->isHengPin:Z

    .line 18
    sput-boolean v1, Lcom/google/utils/XmParms;->isVideReady:Z

    .line 21
    sput-boolean v1, Lcom/google/utils/XmParms;->showInterstitialSplash:Z

    .line 23
    const-string/jumbo v0, "582a6f4665b6d66c2800008d"

    sput-object v0, Lcom/google/utils/XmParms;->UMENG_KEY:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "abcdefg"

    sput-object v0, Lcom/google/utils/XmParms;->UMENG_CHANNEL:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/google/utils/XmParms;->needBanner:Z

    .line 30
    sput-boolean v2, Lcom/google/utils/XmParms;->isBannerTop:Z

    .line 31
    sput-boolean v2, Lcom/google/utils/XmParms;->isBannerCanClose:Z

    .line 32
    sput-boolean v2, Lcom/google/utils/XmParms;->isBannerAutoHide:Z

    .line 33
    sput-boolean v1, Lcom/google/utils/XmParms;->isADCover:Z

    .line 34
    const-string/jumbo v0, "demo.ad.xiaomi.com.myapplication"

    sput-object v0, Lcom/google/utils/XmParms;->pkgname:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "demo.ad.xiaomi.com.myapplication.MainActivity"

    sput-object v0, Lcom/google/utils/XmParms;->launcher:Ljava/lang/String;

    .line 39
    sput-boolean v1, Lcom/google/utils/XmParms;->appCreate:Z

    .line 40
    sput-boolean v1, Lcom/google/utils/XmParms;->appAttach:Z

    .line 41
    sput-boolean v1, Lcom/google/utils/XmParms;->launchCreate:Z

    .line 42
    sput-boolean v1, Lcom/google/utils/XmParms;->launchStart:Z

    .line 43
    sput-boolean v1, Lcom/google/utils/XmParms;->launchResume:Z

    .line 44
    sput-boolean v1, Lcom/google/utils/XmParms;->launchPause:Z

    .line 45
    sput-boolean v1, Lcom/google/utils/XmParms;->launchStop:Z

    .line 46
    sput-boolean v1, Lcom/google/utils/XmParms;->launchDestroy:Z

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

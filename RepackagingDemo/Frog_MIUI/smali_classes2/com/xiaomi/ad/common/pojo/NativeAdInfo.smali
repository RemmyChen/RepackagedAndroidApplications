.class public Lcom/xiaomi/ad/common/pojo/NativeAdInfo;
.super Lcom/xiaomi/ad/common/pojo/Ad;
.source "NativeAdInfo.java"


# static fields
.field public static final DEFAULT_EXPIRE_TIME:I = 0x927c0

.field private static final DSP_BAIDU:Ljava/lang/String; = "baidu"

.field private static final DSP_GDT:Ljava/lang/String; = "guangdiantong"

.field public static final INTERSTITIAL_TAG_ID_V1:Ljava/lang/String; = "1.11.f.1"

.field public static final INTERSTITIAL_TAG_ID_V2:Ljava/lang/String; = "1.11.f.2"

.field public static final INTERSTITIAL_TAG_ID_V3:Ljava/lang/String; = "1.11.f.3"

.field private static final KEY_ACTION_URL:Ljava/lang/String; = "actionUrl"

.field private static final KEY_ALL_DOWNLOAD_NUMBER:Ljava/lang/String; = "allDownloadNum"

.field private static final KEY_APK_SIZE:Ljava/lang/String; = "apkSize"

.field private static final KEY_BANNER_REQUEST_INTERVAL:Ljava/lang/String; = "reqInterval"

.field private static final KEY_CLICK_MONITOR_URLS:Ljava/lang/String; = "clickMonitorUrls"

.field private static final KEY_DEEPLINK_PACKAGE_NAME:Ljava/lang/String; = "pn"

.field private static final KEY_DEEPLINK_URL:Ljava/lang/String; = "deeplink"

.field private static final KEY_DOWNLOAD_MONITOR_URLS:Ljava/lang/String; = "downloadMonitorUrls"

.field private static final KEY_DSP_NAME:Ljava/lang/String; = "dspname"

.field private static final KEY_DSP_SHOW_NAME:Ljava/lang/String; = "dspShowName"

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_EX:Ljava/lang/String; = "ex"

.field private static final KEY_EXPIRE_TIME:Ljava/lang/String; = "expireTime"

.field private static final KEY_H5_CONTENT:Ljava/lang/String; = "h5adm"

.field private static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_IMG_LOCAL_PATH:Ljava/lang/String; = "imgLocalPath"

.field private static final KEY_IMG_URLS:Ljava/lang/String; = "imgUrls"

.field private static final KEY_IS_AUTO_ACTIVE:Ljava/lang/String; = "isAA"

.field private static final KEY_IS_POPUP_DOWNLOAD:Ljava/lang/String; = "isPopUpDownload"

.field private static final KEY_IS_SILENT_INSTALLATION:Ljava/lang/String; = "SI"

.field private static final KEY_LANDINGPAGE_URL:Ljava/lang/String; = "landingPageUrl"

.field private static final KEY_LOCAL_LANDINGPAGE:Ljava/lang/String; = "localLandingPagePath"

.field private static final KEY_MATERIAL_TYPE:Ljava/lang/String; = "materialType"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final KEY_PASSBACK:Ljava/lang/String; = "adInfoPassback"

.field private static final KEY_SDK_AD_DETAIL:Ljava/lang/String; = "sdkAdDetail"

.field private static final KEY_SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final KEY_STYLE:Ljava/lang/String; = "adStyle"

.field private static final KEY_SUMMARY:Ljava/lang/String; = "summary"

.field private static final KEY_TAG_ID:Ljava/lang/String; = "tagId"

.field private static final KEY_TARGET_TYPE:Ljava/lang/String; = "targetType"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TRIGGER_ID:Ljava/lang/String; = "triggerId"

.field private static final KEY_VALIDATION_INFO:Ljava/lang/String; = "validationInfo"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_VIDEO_LOCAL_PATH:Ljava/lang/String; = "videoLocalPath"

.field private static final KEY_VIDEO_URL:Ljava/lang/String; = "videoUrl"

.field private static final KEY_VIEW_MONITOR_URLS:Ljava/lang/String; = "viewMonitorUrls"

.field private static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final MATERIAL_GIF_PICTURE:I = 0x2

.field public static final MATERIAL_PICTURE:I = 0x1

.field public static final MATERIAL_VIDEO:I = 0x3

.field public static final STYLE_BANNER:I = 0x32

.field public static final STYLE_HORIZONTAL_INTERSTITIAL:I = 0x15

.field public static final STYLE_HORIZONTAL_SPLASH:I = 0x2a

.field public static final STYLE_NATIVE_GROUP:I = 0x7

.field public static final STYLE_NATIVE_LARGE:I = 0x4

.field public static final STYLE_NATIVE_SMALL:I = 0x6

.field public static final STYLE_VERTICAL_INTERSTITIAL:I = 0x14

.field public static final STYLE_VERTICAL_SPLASH:I = 0x28

.field public static final TARGET_TYPE_GDT_DOWNLOAD:I = 0x6

.field public static final TARGET_TYPE_LANDING_PAGE_LINK:I = 0x1

.field public static final TARGET_TYPE_NORMAL_DOWNLOAD:I = 0x2


# instance fields
.field private mAllDownloadNumber:J

.field private mApkSize:J

.field private mClickMonitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeeplinkPackageName:Ljava/lang/String;

.field private mDeeplinkUrl:Ljava/lang/String;

.field private mDownloadMonitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadUrl:Ljava/lang/String;

.field private mDspName:Ljava/lang/String;

.field private mDspShowName:Ljava/lang/String;

.field private mDuration:I

.field private mEx:Ljava/lang/String;

.field private mExpireTime:J

.field private mGDTModel:Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;

.field private mH5Content:Ljava/lang/String;

.field private mHeight:I

.field private mImageLocalPath:Ljava/lang/String;

.field private mImgUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLandingPageUrl:Ljava/lang/String;

.field private mLocalLandingPageUrl:Ljava/lang/String;

.field private mMaterialType:I

.field private mMinShowTime:I

.field private mPackageName:Ljava/lang/String;

.field private mPassback:Ljava/lang/String;

.field private mSdkAdDetail:Lorg/json/JSONObject;

.field private mSequence:I

.field private mSource:Ljava/lang/String;

.field private mStyle:I

.field private mSummary:Ljava/lang/String;

.field private mTagId:Ljava/lang/String;

.field private mTargetType:I

.field private mTemplate:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoLocalPath:Ljava/lang/String;

.field private mVideoUrl:Ljava/lang/String;

.field private mViewMonitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/common/pojo/Ad;-><init>(Lorg/json/JSONObject;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImgUrls:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mViewMonitorUrls:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mClickMonitorUrls:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDownloadMonitorUrls:Ljava/util/List;

    .line 144
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->parseAd(Lorg/json/JSONObject;)V

    .line 145
    return-void
.end method

.method private parseAd(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 149
    :try_start_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTitle:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "videoUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoUrl:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "adInfoPassback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mPassback:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mId:J

    .line 153
    const-string/jumbo v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDownloadUrl:Ljava/lang/String;

    .line 154
    const-string/jumbo v0, "dspShowName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDspShowName:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTemplate:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSource:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSummary:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLandingPageUrl:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mEx:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTargetType:I

    .line 162
    const-string/jumbo v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDuration:I

    .line 163
    const-string/jumbo v0, "expireTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mExpireTime:J

    .line 164
    const-string/jumbo v0, "sdkAdDetail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    .line 166
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mViewMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mViewMonitorUrls:Ljava/util/List;

    const-string/jumbo v1, "viewMonitorUrls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mClickMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mClickMonitorUrls:Ljava/util/List;

    const-string/jumbo v1, "clickMonitorUrls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDownloadMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDownloadMonitorUrls:Ljava/util/List;

    const-string/jumbo v1, "downloadMonitorUrls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImgUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImgUrls:Ljava/util/List;

    const-string/jumbo v1, "imgUrls"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    const-string/jumbo v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDeeplinkUrl:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLandingPageUrl:Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mPackageName:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, "apkSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mApkSize:J

    .line 182
    const-string/jumbo v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mAllDownloadNumber:J

    .line 183
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mWidth:I

    .line 184
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mHeight:I

    .line 185
    const-string/jumbo v0, "sequence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSequence:I

    .line 186
    const-string/jumbo v0, "adStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    .line 187
    const-string/jumbo v0, "tagId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTagId:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "materialType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mMaterialType:I

    .line 189
    const-string/jumbo v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v1, "pn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDeeplinkPackageName:Ljava/lang/String;

    .line 192
    const-string/jumbo v1, "h5adm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mH5Content:Ljava/lang/String;

    .line 193
    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mMinShowTime:I

    .line 194
    const-string/jumbo v1, "dspname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDspName:Ljava/lang/String;

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->isGDT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLandingPageUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mViewMonitorUrls:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->parseData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mGDTModel:Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string/jumbo v1, "Ad"

    const-string/jumbo v2, "parseAd"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private parseMonitors(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 208
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 209
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-object v1
.end method

.method public static valueOf(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/Ad;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->deserialize(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;
    .locals 1

    .prologue
    .line 499
    :try_start_0
    const-string/jumbo v0, "videoLocalPath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoLocalPath:Ljava/lang/String;

    .line 500
    const-string/jumbo v0, "imgLocalPath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImageLocalPath:Ljava/lang/String;

    .line 501
    const-string/jumbo v0, "localLandingPagePath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLocalLandingPageUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    return-object p0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllDownloadNumber()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mAllDownloadNumber:J

    return-wide v0
.end method

.method public getApkSize()J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mApkSize:J

    return-wide v0
.end method

.method public getBannerRequestInterval()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 370
    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    const-string/jumbo v3, "reqInterval"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 373
    :cond_0
    return-wide v0
.end method

.method public getClickMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mClickMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDeeplinkPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDeeplinkPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeeplinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDeeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDownloadMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspShowName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDspShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDuration:I

    return v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mEx:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 4

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mExpireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 462
    const-wide/32 v0, 0x927c0

    .line 464
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mExpireTime:J

    goto :goto_0
.end method

.method public getGDTModel()Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mGDTModel:Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;

    return-object v0
.end method

.method public getH5Content()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mH5Content:Ljava/lang/String;

    return-object v0
.end method

.method public getH5WLRatio()D
    .locals 4

    .prologue
    .line 313
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mHeight:I

    if-nez v0, :cond_0

    .line 314
    const-wide/16 v0, 0x0

    .line 316
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mHeight:I

    return v0
.end method

.method public getImgUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImgUrls:Ljava/util/List;

    return-object v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLandingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalLandingPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLocalLandingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialType()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mMaterialType:I

    return v0
.end method

.method public getMinShowTime()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mMinShowTime:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassback()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mPassback:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSequence:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTargetType:I

    return v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    const-string/jumbo v1, "validationInfo"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVideoLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mViewMonitorUrls:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mWidth:I

    return v0
.end method

.method public isAutoActive()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    const-string/jumbo v3, "isAA"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 344
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 342
    goto :goto_0

    :cond_1
    move v0, v1

    .line 344
    goto :goto_0
.end method

.method public isBaidu()Z
    .locals 2

    .prologue
    .line 227
    const-string/jumbo v0, "baidu"

    iget-object v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDspName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDownloadAd()Z
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTargetType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTargetType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGDT()Z
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "guangdiantong"

    iget-object v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mDspName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGDTDownload()Z
    .locals 2

    .prologue
    .line 324
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTargetType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalInterstitialAd()Z
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalSplash()Z
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJumpLandingPageUrl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 320
    iget v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mTargetType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaterialGifPicture()Z
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mMaterialType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaterialNormalPicture()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 397
    iget v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mMaterialType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaterialVideo()Z
    .locals 2

    .prologue
    .line 401
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mMaterialType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentDownload()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 355
    iget-object v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    const-string/jumbo v2, "isPopUpDownload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 356
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentInstall()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    const-string/jumbo v3, "SI"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 337
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 334
    goto :goto_0

    :cond_1
    move v0, v1

    .line 337
    goto :goto_0
.end method

.method public isUiDownload()Z
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mSdkAdDetail:Lorg/json/JSONObject;

    const-string/jumbo v1, "isPopUpDownload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalInterstitialAd()Z
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalSplash()Z
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocalLandingPageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLocalLandingPageUrl:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mPackageName:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .prologue
    .line 449
    iput p1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    .line 450
    return-void
.end method

.method public setVideoLocalPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoLocalPath:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 478
    invoke-super {p0}, Lcom/xiaomi/ad/common/pojo/Ad;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoLocalPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoLocalPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string/jumbo v0, "videoLocalPath"

    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mVideoLocalPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImageLocalPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImageLocalPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    const-string/jumbo v0, "imgLocalPath"

    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mImageLocalPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLocalLandingPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 487
    const-string/jumbo v0, "localLandingPagePath"

    iget-object v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mLocalLandingPageUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    :cond_2
    const-string/jumbo v0, "adStyle"

    iget v2, p0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->mStyle:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-object v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Ad id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/unity3d/ads/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/UnityAds$UnityAdsError;,
        Lcom/unity3d/ads/UnityAds$PlacementState;,
        Lcom/unity3d/ads/UnityAds$FinishState;
    }
.end annotation


# static fields
.field private static _configurationInitialized:Z

.field private static _debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    .line 26
    sput-boolean v0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    return-void
.end method

.method public static getDebugMode()Z
    .locals 1

    .prologue
    .line 396
    sget-boolean v0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    return v0
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1

    .prologue
    .line 265
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    goto :goto_0
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 280
    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 4
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads show failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v1

    .line 364
    .local v1, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    if-eqz v1, :cond_0

    .line 365
    new-instance v2, Lcom/unity3d/ads/UnityAds$2;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/unity3d/ads/UnityAds$2;-><init>(Lcom/unity3d/ads/IUnityAdsListener;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 373
    :cond_0
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V

    .line 98
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;
    .param p3, "testMode"    # Z

    .prologue
    const/4 v4, 0x1

    .line 109
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 113
    sget-boolean v2, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string v2, "You are trying to re-initialize with a different gameId"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sput-boolean v4, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    .line 122
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    const-string v2, "Error while initializing Unity Ads: device is not supported"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unity3d/ads/properties/SdkProperties;->setInitializationTime(J)V

    .line 129
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 130
    :cond_3
    const-string v2, "Error while initializing Unity Ads: empty game ID, halting Unity Ads init"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 131
    if-eqz p2, :cond_0

    .line 132
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v3, "Empty game ID"

    invoke-interface {p2, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_4
    if-nez p0, :cond_5

    .line 138
    const-string v2, "Error while initializing Unity Ads: null activity, halting Unity Ads init"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 139
    if-eqz p2, :cond_0

    .line 140
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v3, "Null activity"

    invoke-interface {p2, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_5
    if-eqz p3, :cond_6

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing Unity Ads "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with game id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in test mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 151
    :goto_1
    sget-boolean v2, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    invoke-static {v2}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 153
    invoke-static {p1}, Lcom/unity3d/ads/properties/ClientProperties;->setGameId(Ljava/lang/String;)V

    .line 154
    invoke-static {p2}, Lcom/unity3d/ads/properties/ClientProperties;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    .line 157
    invoke-static {p3}, Lcom/unity3d/ads/properties/SdkProperties;->setTestMode(Z)V

    .line 159
    invoke-static {}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->isEnvironmentOk()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 160
    const-string v2, "Unity Ads environment check OK"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v1}, Lcom/unity3d/ads/configuration/Configuration;-><init>()V

    .line 170
    .local v1, "configuration":Lcom/unity3d/ads/configuration/Configuration;
    const/16 v2, 0x12

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/unity3d/ads/api/AdUnit;

    aput-object v3, v0, v2

    const-class v2, Lcom/unity3d/ads/api/Broadcast;

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-class v3, Lcom/unity3d/ads/api/Cache;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-class v3, Lcom/unity3d/ads/api/Connectivity;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-class v3, Lcom/unity3d/ads/api/DeviceInfo;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-class v3, Lcom/unity3d/ads/api/Listener;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-class v3, Lcom/unity3d/ads/api/Storage;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-class v3, Lcom/unity3d/ads/api/Sdk;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-class v3, Lcom/unity3d/ads/api/Request;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-class v3, Lcom/unity3d/ads/api/Resolve;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-class v3, Lcom/unity3d/ads/api/VideoPlayer;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-class v3, Lcom/unity3d/ads/api/Placement;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-class v3, Lcom/unity3d/ads/api/Intent;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-class v3, Lcom/unity3d/ads/api/Lifecycle;

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-class v3, Lcom/unity3d/ads/api/WebPlayer;

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-class v3, Lcom/unity3d/ads/api/Preferences;

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-class v3, Lcom/unity3d/ads/api/Purchasing;

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-class v3, Lcom/unity3d/ads/api/SensorInfo;

    aput-object v3, v0, v2

    .line 191
    .local v0, "apiClassList":[Ljava/lang/Class;
    invoke-virtual {v1, v0}, Lcom/unity3d/ads/configuration/Configuration;->setWebAppApiClassList([Ljava/lang/Class;)V

    .line 192
    invoke-static {v1}, Lcom/unity3d/ads/configuration/InitializeThread;->initialize(Lcom/unity3d/ads/configuration/Configuration;)V

    goto/16 :goto_0

    .line 148
    .end local v0    # "apiClassList":[Ljava/lang/Class;
    .end local v1    # "configuration":Lcom/unity3d/ads/configuration/Configuration;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing Unity Ads "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with game id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in production mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 162
    :cond_7
    const-string v2, "Error during Unity Ads environment check, halting Unity Ads init"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 163
    if-eqz p2, :cond_0

    .line 164
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v3, "Unity Ads init environment check failed"

    invoke-interface {p2, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isReady()Z
    .locals 1

    .prologue
    .line 246
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReady(Ljava/lang/String;)Z
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 1
    .param p0, "debugMode"    # Z

    .prologue
    .line 381
    sput-boolean p0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    .line 383
    if-eqz p0, :cond_0

    .line 384
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->setLogLevel(I)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->setLogLevel(I)V

    goto :goto_0
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 210
    invoke-static {p0}, Lcom/unity3d/ads/properties/ClientProperties;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 211
    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 292
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Activity must not be null"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 357
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads opening new ad unit for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 309
    invoke-static {p0}, Lcom/unity3d/ads/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    .line 310
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ads/UnityAds$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/ads/UnityAds$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not supported for this device"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not initialized"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_3
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0
.end method

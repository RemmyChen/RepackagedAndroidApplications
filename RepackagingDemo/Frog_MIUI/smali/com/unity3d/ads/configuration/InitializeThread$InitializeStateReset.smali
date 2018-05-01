.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateReset"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 74
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 75
    return-void
.end method

.method private unregisterLifecycleCallbacks()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/ads/lifecycle/LifecycleListener;)V

    .line 141
    :cond_1
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 79
    const-string v4, "Unity Ads init: starting init"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 81
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 82
    .local v2, "cv":Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    .line 83
    .local v1, "currentApp":Lcom/unity3d/ads/webview/WebViewApp;
    const/4 v3, 0x1

    .line 85
    .local v3, "success":Z
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1, v6}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppLoaded(Z)V

    .line 87
    invoke-virtual {v1, v6}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppInitialized(Z)V

    .line 89
    invoke-virtual {v1}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 90
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;Lcom/unity3d/ads/webview/WebViewApp;Landroid/os/ConditionVariable;)V

    invoke-static {v4}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    .line 102
    :cond_0
    if-nez v3, :cond_1

    .line 103
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "reset webapp"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Reset failed on opening ConditionVariable"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    :goto_0
    return-object v4

    .line 107
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-le v4, v5, :cond_2

    .line 108
    invoke-direct {p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->unregisterLifecycleCallbacks()V

    .line 111
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/unity3d/ads/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/ads/cache/CacheDirectory;)V

    .line 112
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_3

    .line 114
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "reset webapp"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Cache directory is NULL"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-static {v6}, Lcom/unity3d/ads/properties/SdkProperties;->setInitialized(Z)V

    .line 118
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->reset()V

    .line 119
    invoke-static {}, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->removeAllBroadcastListeners()V

    .line 120
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->cancel()V

    .line 121
    invoke-static {}, Lcom/unity3d/ads/request/WebRequestThread;->cancel()V

    .line 122
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->stopAll()V

    .line 124
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/device/StorageManager;->init(Landroid/content/Context;)Z

    .line 125
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/device/AdvertisingId;->init(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/unity3d/ads/device/VolumeChange;->clearAllListeners()V

    .line 128
    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/unity3d/ads/configuration/Configuration;->setConfigUrl(Ljava/lang/String;)V

    .line 129
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_0
.end method

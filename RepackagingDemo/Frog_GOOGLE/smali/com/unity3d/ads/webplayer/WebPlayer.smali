.class public Lcom/unity3d/ads/webplayer/WebPlayer;
.super Landroid/webkit/WebView;
.source "WebPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerDownloadListener;,
        Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;,
        Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;,
        Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;
    }
.end annotation


# instance fields
.field private _erroredSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _evaluateJavascript:Ljava/lang/reflect/Method;

.field private _eventSettings:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webSettings"    # Lorg/json/JSONObject;
    .param p3, "webPlayerSettings"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v8, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    .line 59
    invoke-virtual {p0}, Lcom/unity3d/ads/webplayer/WebPlayer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 61
    .local v1, "settings":Landroid/webkit/WebSettings;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 62
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 63
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 65
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 67
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "evaluateJavascript"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/ValueCallback;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 75
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 76
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 78
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 79
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 80
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 83
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 84
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 85
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 86
    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 88
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webplayer/WebPlayer;->setHorizontalScrollBarEnabled(Z)V

    .line 89
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webplayer/WebPlayer;->setVerticalScrollBarEnabled(Z)V

    .line 90
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webplayer/WebPlayer;->setInitialScale(I)V

    .line 91
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webplayer/WebPlayer;->setBackgroundColor(I)V

    .line 92
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v2}, Lcom/unity3d/ads/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p0, v7}, Lcom/unity3d/ads/webplayer/WebPlayer;->setBackgroundResource(I)V

    .line 95
    invoke-virtual {p0, p2, p3}, Lcom/unity3d/ads/webplayer/WebPlayer;->setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 97
    new-instance v2, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;

    invoke-direct {v2, p0, v8}, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;-><init>(Lcom/unity3d/ads/webplayer/WebPlayer;Lcom/unity3d/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    new-instance v2, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;

    invoke-direct {v2, p0, v8}, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;-><init>(Lcom/unity3d/ads/webplayer/WebPlayer;Lcom/unity3d/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    new-instance v2, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerDownloadListener;

    invoke-direct {v2, p0, v8}, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerDownloadListener;-><init>(Lcom/unity3d/ads/webplayer/WebPlayer;Lcom/unity3d/ads/webplayer/WebPlayer$1;)V

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 101
    new-instance v2, Lcom/unity3d/ads/webplayer/WebPlayerBridgeInterface;

    invoke-direct {v2}, Lcom/unity3d/ads/webplayer/WebPlayerBridgeInterface;-><init>()V

    const-string v3, "webplayerbridge"

    invoke-virtual {p0, v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "Method evaluateJavascript not found"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 70
    iput-object v8, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/unity3d/ads/webplayer/WebPlayer;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/webplayer/WebPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_evaluateJavascript:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/webplayer/WebPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webplayer/WebPlayer;->shouldCallSuper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/webplayer/WebPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webplayer/WebPlayer;->shouldSendEvent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/webplayer/WebPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webplayer/WebPlayer;->hasReturnValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/unity3d/ads/webplayer/WebPlayer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/ads/webplayer/WebPlayer;->getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method private getReturnValue(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 320
    .end local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object p3

    .line 316
    .restart local p3    # "defaultValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting default return value"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;
    .locals 7
    .param p1, "parameters"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 185
    const/4 v5, 0x0

    .line 208
    :cond_0
    return-object v5

    .line 187
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v5, v6, [Ljava/lang/Class;

    .line 190
    .local v5, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 191
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 192
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 193
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 194
    .local v3, "param":Lorg/json/JSONObject;
    const-string v6, "className"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 197
    .local v4, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_2

    .line 198
    aput-object v4, v5, v2

    .line 191
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v4    # "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 203
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v2

    goto :goto_1
.end method

.method private getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .locals 10
    .param p1, "parameters"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 239
    if-nez p1, :cond_1

    .line 240
    const/4 v7, 0x0

    .line 273
    :cond_0
    :goto_0
    return-object v7

    .line 242
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v7, v8, [Ljava/lang/Object;

    .line 245
    .local v7, "values":[Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v4, v8, [Ljava/lang/Object;

    .line 246
    .local v4, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 247
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/json/JSONObject;

    if-eqz v8, :cond_4

    .line 248
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 249
    .local v3, "param":Lorg/json/JSONObject;
    const-string v8, "value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 250
    .local v6, "value":Ljava/lang/Object;
    const-string v8, "type"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 253
    .local v0, "className":Ljava/lang/String;
    const-string v8, "className"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 254
    const-string v8, "className"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_2
    if-eqz v0, :cond_3

    const-string v8, "Enum"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 258
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 259
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_3

    .line 260
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v1, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    aput-object v8, v4, v2

    .line 246
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "param":Lorg/json/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_4
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v2

    goto :goto_2

    .line 269
    :cond_5
    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private hasReturnValue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "returnValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const/4 v1, 0x1

    .line 333
    :goto_0
    return v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting default return value"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "targetObj"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/json/JSONObject;

    .prologue
    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    .local v2, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 129
    .local v4, "parameters":Lorg/json/JSONArray;
    invoke-direct {p0, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->getTypes(Lorg/json/JSONArray;)[Ljava/lang/Class;

    move-result-object v5

    .line 130
    .local v5, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 131
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->getValues(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "parameters":Lorg/json/JSONArray;
    .end local v5    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/unity3d/ads/webplayer/WebPlayer;->addErroredSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v6, "Setting errored"

    invoke-static {v6, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object p1
.end method

.method private shouldCallSuper(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "callSuper"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "callSuper"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting super call status"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shouldSendEvent(Ljava/lang/String;)Z
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sendEvent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sendEvent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 307
    :goto_0
    return v1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error getting send event status"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getErroredSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "typeName":Ljava/lang/String;
    const-string v1, "java.lang.Byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 233
    .end local p1    # "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p1

    .line 216
    .restart local p1    # "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v1, "java.lang.Short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 218
    :cond_2
    const-string v1, "java.lang.Integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 220
    :cond_3
    const-string v1, "java.lang.Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 222
    :cond_4
    const-string v1, "java.lang.Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 224
    :cond_5
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 225
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 226
    :cond_6
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 227
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 228
    :cond_7
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 229
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 230
    :cond_8
    const-string v1, "java.lang.Void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    goto :goto_0
.end method

.method public invokeJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;

    invoke-direct {v0, p0, p1, p0}, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;-><init>(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public sendEvent(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "params"    # Lorg/json/JSONArray;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:window.nativebridge.receiveEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->invokeJavascript(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setEventSettings(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "eventSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_eventSettings:Lorg/json/JSONObject;

    .line 106
    return-void
.end method

.method public setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "webSettings"    # Lorg/json/JSONObject;
    .param p2, "webPlayerSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer;->_erroredSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/ads/webplayer/WebPlayer;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 114
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-direct {p0, v0, p1}, Lcom/unity3d/ads/webplayer/WebPlayer;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0, p0, p2}, Lcom/unity3d/ads/webplayer/WebPlayer;->setTargetSettings(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    .line 116
    return-void
.end method

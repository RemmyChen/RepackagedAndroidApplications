.class public Lcom/unity3d/ads/api/WebPlayer;
.super Ljava/lang/Object;
.source "WebPlayer.java"


# static fields
.field private static _webPlayerEventSettings:Lorg/json/JSONObject;

.field private static _webPlayerSettings:Lorg/json/JSONObject;

.field private static _webSettings:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webSettings:Lorg/json/JSONObject;

    .line 18
    sput-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerSettings:Lorg/json/JSONObject;

    .line 19
    sput-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerEventSettings:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSettings(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 126
    sput-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webSettings:Lorg/json/JSONObject;

    .line 127
    sput-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerSettings:Lorg/json/JSONObject;

    .line 128
    sput-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerEventSettings:Lorg/json/JSONObject;

    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public static getErroredSettings(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 8
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 135
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 136
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 137
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/webplayer/WebPlayer;->getErroredSettings()Ljava/util/Map;

    move-result-object v2

    .line 138
    .local v2, "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v4, "retObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, "errorIterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 144
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v1    # "errorIterator":Ljava/util/Iterator;
    .end local v3    # "pair":Ljava/util/Map$Entry;
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error forming JSON object"

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-virtual {p0, v5}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 160
    .end local v2    # "errors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "retObj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 154
    :cond_1
    sget-object v5, Lcom/unity3d/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/ads/webplayer/WebPlayerError;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    :cond_2
    sget-object v5, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getWebPlayerEventSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerEventSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getWebPlayerSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getWebSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/unity3d/ads/api/WebPlayer;->_webSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static sendEvent(Lorg/json/JSONArray;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "parameters"    # Lorg/json/JSONArray;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/webplayer/WebPlayer;->sendEvent(Lorg/json/JSONArray;)V

    .line 167
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v0, Lcom/unity3d/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/ads/webplayer/WebPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/unity3d/ads/api/WebPlayer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/ads/api/WebPlayer$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/unity3d/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/ads/webplayer/WebPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setDataWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/unity3d/ads/api/WebPlayer$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unity3d/ads/api/WebPlayer$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p4, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/unity3d/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/ads/webplayer/WebPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p4, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setEventSettings(Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "settings"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 113
    sput-object p0, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerEventSettings:Lorg/json/JSONObject;

    .line 115
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/webplayer/WebPlayer;->setEventSettings(Lorg/json/JSONObject;)V

    .line 121
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static setSettings(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 1
    .param p0, "webSettings"    # Lorg/json/JSONObject;
    .param p1, "webPlayerSettings"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 105
    sput-object p0, Lcom/unity3d/ads/api/WebPlayer;->_webSettings:Lorg/json/JSONObject;

    .line 106
    sput-object p1, Lcom/unity3d/ads/api/WebPlayer;->_webPlayerSettings:Lorg/json/JSONObject;

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static setUrl(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/unity3d/ads/api/WebPlayer$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/WebPlayer$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/unity3d/ads/webplayer/WebPlayerError;->WEBPLAYER_NULL:Lcom/unity3d/ads/webplayer/WebPlayerError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/unity3d/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/ads/adunit/AdUnitError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

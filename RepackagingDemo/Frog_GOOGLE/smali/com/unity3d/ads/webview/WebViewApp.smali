.class public Lcom/unity3d/ads/webview/WebViewApp;
.super Landroid/webkit/WebViewClient;
.source "WebViewApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;,
        Lcom/unity3d/ads/webview/WebViewApp$WebAppClient;
    }
.end annotation


# static fields
.field private static final INVOKE_JS_CHARS_LENGTH:I = 0x16

.field private static _conditionVariable:Landroid/os/ConditionVariable;

.field private static _currentApp:Lcom/unity3d/ads/webview/WebViewApp;


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _initialized:Z

.field private _nativeCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/webview/bridge/NativeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private _webAppLoaded:Z

.field private _webView:Lcom/unity3d/ads/webview/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    .line 42
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 3
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    .line 42
    iput-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/webview/WebViewApp;->setConfiguration(Lcom/unity3d/ads/configuration/Configuration;)V

    .line 46
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->getConfiguration()Lcom/unity3d/ads/configuration/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/Configuration;->getWebAppApiClassList()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->setClassTable([Ljava/lang/Class;)V

    .line 47
    new-instance v0, Lcom/unity3d/ads/webview/WebView;

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/ads/webview/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    .line 48
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    new-instance v1, Lcom/unity3d/ads/webview/WebViewApp$WebAppClient;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/webview/WebViewApp$WebAppClient;-><init>(Lcom/unity3d/ads/webview/WebViewApp;Lcom/unity3d/ads/webview/WebViewApp$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 49
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    new-instance v1, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/webview/WebViewApp$WebAppChromeClient;-><init>(Lcom/unity3d/ads/webview/WebViewApp;Lcom/unity3d/ads/webview/WebViewApp$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/configuration/Configuration;Lcom/unity3d/ads/webview/WebViewApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/configuration/Configuration;
    .param p2, "x1"    # Lcom/unity3d/ads/webview/WebViewApp$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webview/WebViewApp;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static create(Lcom/unity3d/ads/configuration/Configuration;)Z
    .locals 4
    .param p0, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalThreadStateException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Cannot call create() from main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    new-instance v0, Lcom/unity3d/ads/webview/WebViewApp$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/webview/WebViewApp$1;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    .line 294
    sget-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    return-object v0
.end method

.method private invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "paramsString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 90
    .local v3, "stringLength":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, "javascript:window."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v4, ");"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "javaScriptString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoking javascript: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/unity3d/ads/webview/WebView;->invokeJavascript(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static setCurrentApp(Lcom/unity3d/ads/webview/WebViewApp;)V
    .locals 0
    .param p0, "app"    # Lcom/unity3d/ads/webview/WebViewApp;

    .prologue
    .line 245
    sput-object p0, Lcom/unity3d/ads/webview/WebViewApp;->_currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    .line 246
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/NativeCallback;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallback(Ljava/lang/String;)Lcom/unity3d/ads/webview/bridge/NativeCallback;
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/webview/bridge/NativeCallback;

    monitor-exit v1

    return-object v0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method

.method public getWebView()Lcom/unity3d/ads/webview/WebView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    return-object v0
.end method

.method public invokeCallback(Lcom/unity3d/ads/webview/bridge/Invocation;)Z
    .locals 15
    .param p1, "invocation"    # Lcom/unity3d/ads/webview/bridge/Invocation;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v12

    if-nez v12, :cond_0

    .line 166
    const-string v12, "invokeBatchCallback ignored because web app is not loaded"

    invoke-static {v12}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 167
    const/4 v12, 0x0

    .line 209
    :goto_0
    return v12

    .line 170
    :cond_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 172
    .local v8, "responseList":Lorg/json/JSONArray;
    invoke-virtual/range {p1 .. p1}, Lcom/unity3d/ads/webview/bridge/Invocation;->getResponses()Ljava/util/ArrayList;

    move-result-object v9

    .line 173
    .local v9, "responses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 174
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 175
    .local v7, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/unity3d/ads/webview/bridge/CallbackStatus;

    .line 176
    .local v10, "status":Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 177
    .local v2, "error":Ljava/lang/Enum;
    const/4 v12, 0x2

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    move-object v6, v12

    check-cast v6, [Ljava/lang/Object;

    .line 178
    .local v6, "params":[Ljava/lang/Object;
    const/4 v12, 0x0

    aget-object v0, v6, v12

    check-cast v0, Ljava/lang/String;

    .line 179
    .local v0, "callbackId":Ljava/lang/String;
    const/4 v12, 0x1

    array-length v14, v6

    invoke-static {v6, v12, v14}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v6

    .line 181
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v11, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {v10}, Lcom/unity3d/ads/webview/bridge/CallbackStatus;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 186
    .local v4, "paramArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    :cond_1
    array-length v14, v6

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_2

    aget-object v3, v6, v12

    .line 190
    .local v3, "o":Ljava/lang/Object;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 192
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 195
    .local v5, "paramList":Lorg/json/JSONArray;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 196
    .restart local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 199
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 204
    .end local v0    # "callbackId":Ljava/lang/String;
    .end local v2    # "error":Ljava/lang/Enum;
    .end local v4    # "paramArray":Lorg/json/JSONArray;
    .end local v5    # "paramList":Lorg/json/JSONArray;
    .end local v6    # "params":[Ljava/lang/Object;
    .end local v7    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v10    # "status":Lcom/unity3d/ads/webview/bridge/CallbackStatus;
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_4
    :try_start_0
    const-string v12, "nativebridge"

    const-string v13, "handleCallback"

    invoke-direct {p0, v12, v13, v8}, Lcom/unity3d/ads/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "Error while invoking batch response for WebView"

    invoke-static {v12, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public varargs invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/reflect/Method;
    .param p4, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 129
    const-string v5, "invokeMethod ignored because web app is not loaded"

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 161
    :goto_0
    return v4

    .line 133
    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 134
    .local v3, "paramList":Lorg/json/JSONArray;
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 135
    invoke-virtual {v3, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 137
    if-eqz p3, :cond_1

    .line 138
    new-instance v1, Lcom/unity3d/ads/webview/bridge/NativeCallback;

    invoke-direct {v1, p3}, Lcom/unity3d/ads/webview/bridge/NativeCallback;-><init>(Ljava/lang/reflect/Method;)V

    .line 140
    .local v1, "nativeCallback":Lcom/unity3d/ads/webview/bridge/NativeCallback;
    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/WebViewApp;->addCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V

    .line 141
    invoke-virtual {v1}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 147
    .end local v1    # "nativeCallback":Lcom/unity3d/ads/webview/bridge/NativeCallback;
    :goto_1
    if-eqz p4, :cond_2

    .line 148
    array-length v6, p4

    move v5, v4

    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v2, p4, v5

    .line 149
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 144
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 154
    :cond_2
    :try_start_0
    const-string v5, "nativebridge"

    const-string v6, "handleInvocation"

    invoke-direct {p0, v5, v6, v3}, Lcom/unity3d/ads/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v4, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "Error invoking javascript method"

    invoke-static {v5, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public isWebAppInitialized()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    return v0
.end method

.method public isWebAppLoaded()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    return v0
.end method

.method public removeCallback(Lcom/unity3d/ads/webview/bridge/NativeCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/NativeCallback;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/webview/WebViewApp;->_nativeCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public varargs sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    .locals 6
    .param p1, "eventCategory"    # Ljava/lang/Enum;
    .param p2, "eventId"    # Ljava/lang/Enum;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    const-string v4, "sendEvent ignored because web app is not loaded"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 124
    :goto_0
    return v3

    .line 109
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 110
    .local v2, "paramList":Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    array-length v5, p3

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v1, p3, v4

    .line 114
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 118
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    :try_start_0
    const-string v4, "nativebridge"

    const-string v5, "handleEvent"

    invoke-direct {p0, v4, v5, v2}, Lcom/unity3d/ads/webview/WebViewApp;->invokeJavascriptMethod(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v3, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Error while sending event to WebView"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setConfiguration(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 85
    return-void
.end method

.method public setWebAppInitialized(Z)V
    .locals 1
    .param p1, "initialized"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_initialized:Z

    .line 64
    sget-object v0, Lcom/unity3d/ads/webview/WebViewApp;->_conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 65
    return-void
.end method

.method public setWebAppLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webAppLoaded:Z

    .line 56
    return-void
.end method

.method public setWebView(Lcom/unity3d/ads/webview/WebView;)V
    .locals 0
    .param p1, "webView"    # Lcom/unity3d/ads/webview/WebView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/unity3d/ads/webview/WebViewApp;->_webView:Lcom/unity3d/ads/webview/WebView;

    .line 77
    return-void
.end method

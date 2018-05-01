.class Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;
.super Ljava/lang/Object;
.source "WebPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/webplayer/WebPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JavaScriptInvocation"
.end annotation


# instance fields
.field private _jsString:Ljava/lang/String;

.field private _webView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/unity3d/ads/webplayer/WebPlayer;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 1
    .param p2, "jsString"    # Ljava/lang/String;
    .param p3, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v0, 0x0

    .line 159
    iput-object p1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    .line 160
    iput-object p2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 166
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 168
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-static {v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$300(Lcom/unity3d/ads/webplayer/WebPlayer;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_webView:Landroid/webkit/WebView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$JavaScriptInvocation;->_jsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while processing JavaScriptString"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "Could not process JavaScript, the string is NULL"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebPlayer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/webplayer/WebPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebPlayerChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/webplayer/WebPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/webplayer/WebPlayer;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/webplayer/WebPlayer;Lcom/unity3d/ads/webplayer/WebPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/webplayer/WebPlayer;
    .param p2, "x1"    # Lcom/unity3d/ads/webplayer/WebPlayer$1;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;-><init>(Lcom/unity3d/ads/webplayer/WebPlayer;)V

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "window"    # Landroid/webkit/WebView;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onCloseWindow"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->CLOSE_WINDOW:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 702
    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 757
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 759
    .local v1, "returnValue":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onConsoleMessage"

    invoke-static {v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 760
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 762
    :cond_0
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onConsoleMessage"

    invoke-static {v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 763
    const-string v0, ""

    .line 764
    .local v0, "message":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 765
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 767
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->CONSOLE_MESSAGE:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 769
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onConsoleMessage"

    invoke-static {v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 770
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onConsoleMessage"

    const-class v4, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "returnValue":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .line 773
    .restart local v1    # "returnValue":Ljava/lang/Boolean;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 669
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 671
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onCreateWindow"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onCreateWindow"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->CREATE_WINDOW:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onCreateWindow"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onCreateWindow"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 681
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->GEOLOCATION_PERMISSIONS_SHOW:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 591
    :cond_1
    return-void
.end method

.method public onHideCustomView()V
    .locals 4

    .prologue
    .line 659
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->HIDE_CUSTOM_VIEW:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 665
    :cond_1
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 706
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 708
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsAlert"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsAlert"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->JS_ALERT:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsAlert"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsAlert"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 718
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 723
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 725
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsConfirm"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsConfirm"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->JS_CONFIRM:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsConfirm"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsConfirm"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 735
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 740
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 742
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsPrompt"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsPrompt"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->JS_PROMPT:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object p3, v4, v6

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsPrompt"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onJsPrompt"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 752
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 6
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .prologue
    .line 595
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onPermissionRequest"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onPermissionRequest"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 599
    const-string v0, ""

    .line 600
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 601
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->PERMISSION_REQUEST:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 605
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onProgressChanged"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->PROGRESS_CHANGED:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 615
    :cond_1
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->RECEIVED_ICON:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 635
    :cond_1
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTitle"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->RECEIVED_TITLE:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 625
    :cond_1
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "precomposed"    # Z

    .prologue
    .line 639
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTouchIconUrl"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedTouchIconUrl"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->RECEIVED_TOUCH_ICON_URL:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 645
    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onRequestFocus"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onRequestFocus"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->REQUEST_FOCUS:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 692
    :cond_1
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 649
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SHOW_CUSTOM_VIEW:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 655
    :cond_1
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v4, 0x0

    .line 778
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 780
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onShowFileChooser"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onShowFileChooser"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SHOW_FILE_CHOOSER:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onShowFileChooser"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerChromeClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onShowFileChooser"

    const-class v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 788
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 793
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

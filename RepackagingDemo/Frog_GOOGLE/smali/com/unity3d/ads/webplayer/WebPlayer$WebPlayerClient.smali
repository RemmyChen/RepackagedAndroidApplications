.class Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;
.super Landroid/webkit/WebViewClient;
.source "WebPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/webplayer/WebPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebPlayerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/webplayer/WebPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/webplayer/WebPlayer;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/webplayer/WebPlayer;Lcom/unity3d/ads/webplayer/WebPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/unity3d/ads/webplayer/WebPlayer;
    .param p2, "x1"    # Lcom/unity3d/ads/webplayer/WebPlayer$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;-><init>(Lcom/unity3d/ads/webplayer/WebPlayer;)V

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onFormResubmission"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onFormResubmission"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->FORM_RESUBMISSION:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 550
    :cond_1
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onLoadResource"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onLoadResource"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->LOAD_RESOUCE:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 394
    :cond_1
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onPageCommitVisible"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onPageCommitVisible"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->PAGE_COMMIT_VISIBLE:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 525
    :cond_1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->PAGE_FINISHED:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 355
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->PAGE_STARTED:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 345
    :cond_1
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 414
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onReceivedClientCertRequest"

    invoke-static {v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onReceivedClientCertRequest"

    invoke-static {v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    const-string v0, ""

    .line 419
    .local v0, "host":Ljava/lang/String;
    const/4 v1, -0x1

    .line 421
    .local v1, "port":I
    if-eqz p2, :cond_1

    .line 422
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPort()I

    move-result v1

    .line 425
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->CLIENT_CERT_REQUEST:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 427
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "port":I
    :cond_2
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedError"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->ERROR:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 365
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .prologue
    .line 370
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onReceivedError"

    invoke-static {v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v3, "onReceivedError"

    invoke-static {v2, v3}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    const-string v0, ""

    .line 375
    .local v0, "description":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 376
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_1
    const-string v1, ""

    .line 379
    .local v1, "url":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 380
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->ERROR:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 384
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedHttpAuthRequest"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedHttpAuthRequest"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->HTTP_AUTH_REQUEST:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 437
    :cond_1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 462
    iget-object v3, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v4, "onReceivedHttpError"

    invoke-static {v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v4, "onReceivedHttpError"

    invoke-static {v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 466
    const-string v2, ""

    .line 467
    .local v2, "url":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 468
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    :cond_1
    const/4 v1, -0x1

    .line 472
    .local v1, "statusCode":I
    const-string v0, ""

    .line 473
    .local v0, "reasonPhrase":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 474
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    .line 475
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 478
    :cond_2
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v3

    sget-object v4, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v5, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->HTTP_ERROR:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 480
    .end local v0    # "reasonPhrase":Ljava/lang/String;
    .end local v1    # "statusCode":I
    .end local v2    # "url":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "args"    # Ljava/lang/String;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedLoginRequest"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onReceivedLoginRequest"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->LOGIN_REQUEST:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 457
    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 399
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onReceivedSslError"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "onReceivedSslError"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    const-string v0, ""

    .line 404
    .local v0, "url":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 405
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 407
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SSL_ERROR:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 409
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 441
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onScaleChanged"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onScaleChanged"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SCALE_CHANGED:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 447
    :cond_1
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onUnhandledKeyEvent"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v1, "onUnhandledKeyEvent"

    invoke-static {v0, v1}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->UNHANDLED_KEY_EVENT:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 577
    :cond_1
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "returnValue":Landroid/webkit/WebResourceResponse;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldInterceptRequest"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldInterceptRequest"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SHOULD_INTERCEPT_REQUEST:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 539
    :cond_1
    return-object v0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 554
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 556
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideKeyEvent"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideKeyEvent"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_KEY_EVENT:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 562
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideKeyEvent"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideKeyEvent"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 566
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 485
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 487
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 497
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 502
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 504
    .local v0, "returnValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$400(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/ads/webplayer/WebPlayerEvent;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    invoke-static {v1, v2}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    iget-object v1, p0, Lcom/unity3d/ads/webplayer/WebPlayer$WebPlayerClient;->this$0:Lcom/unity3d/ads/webplayer/WebPlayer;

    const-string v2, "shouldOverrideUrlLoading"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/unity3d/ads/webplayer/WebPlayer;->access$700(Lcom/unity3d/ads/webplayer/WebPlayer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "returnValue":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 514
    .restart local v0    # "returnValue":Ljava/lang/Boolean;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

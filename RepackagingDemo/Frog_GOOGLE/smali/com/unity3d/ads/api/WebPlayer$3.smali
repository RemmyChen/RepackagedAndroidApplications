.class final Lcom/unity3d/ads/api/WebPlayer$3;
.super Ljava/lang/Object;
.source "WebPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/WebPlayer;->setDataWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$baseUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$encoding:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitActivity;->getWebPlayer()Lcom/unity3d/ads/webplayer/WebPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$data:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$mimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/unity3d/ads/api/WebPlayer$3;->val$encoding:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/webplayer/WebPlayer;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

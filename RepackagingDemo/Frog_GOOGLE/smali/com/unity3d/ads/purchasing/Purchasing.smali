.class public Lcom/unity3d/ads/purchasing/Purchasing;
.super Ljava/lang/Object;
.source "Purchasing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/purchasing/Purchasing$UnityAdsPurchasingEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchReturnEvent(ILjava/lang/String;)V
    .locals 5
    .param p0, "event"    # I
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    .line 23
    .local v0, "webViewApp":Lcom/unity3d/ads/webview/WebViewApp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->PURCHASING:Lcom/unity3d/ads/webview/WebViewEventCategory;

    invoke-static {}, Lcom/unity3d/ads/purchasing/Purchasing$UnityAdsPurchasingEvent;->values()[Lcom/unity3d/ads/purchasing/Purchasing$UnityAdsPurchasingEvent;

    move-result-object v2

    aget-object v2, v2, p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static initialize(Lcom/unity3d/ads/purchasing/IPurchasing;)V
    .locals 0
    .param p0, "purchasingInterface"    # Lcom/unity3d/ads/purchasing/IPurchasing;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/unity3d/ads/api/Purchasing;->setPurchasingInterface(Lcom/unity3d/ads/purchasing/IPurchasing;)V

    .line 17
    return-void
.end method

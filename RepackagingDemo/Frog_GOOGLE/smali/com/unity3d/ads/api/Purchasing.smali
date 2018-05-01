.class public Lcom/unity3d/ads/api/Purchasing;
.super Ljava/lang/Object;
.source "Purchasing.java"


# static fields
.field public static purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPromoCatalog(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v0, Lcom/unity3d/ads/api/Purchasing$3;

    invoke-direct {v0}, Lcom/unity3d/ads/api/Purchasing$3;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    sget-object v0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 68
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getPromoVersion(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v0, Lcom/unity3d/ads/api/Purchasing$2;

    invoke-direct {v0}, Lcom/unity3d/ads/api/Purchasing$2;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    sget-object v0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static initializePurchasing(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    new-instance v0, Lcom/unity3d/ads/api/Purchasing$4;

    invoke-direct {v0}, Lcom/unity3d/ads/api/Purchasing$4;-><init>()V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    sget-object v0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 87
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static initiatePurchasingCommand(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .param p0, "eventString"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    new-instance v0, Lcom/unity3d/ads/api/Purchasing$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Purchasing$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    sget-object v0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    .line 30
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/unity3d/ads/purchasing/PurchasingError;->PURCHASE_INTERFACE_NULL:Lcom/unity3d/ads/purchasing/PurchasingError;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setPurchasingInterface(Lcom/unity3d/ads/purchasing/IPurchasing;)V
    .locals 0
    .param p0, "purchasing"    # Lcom/unity3d/ads/purchasing/IPurchasing;

    .prologue
    .line 15
    sput-object p0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    .line 16
    return-void
.end method

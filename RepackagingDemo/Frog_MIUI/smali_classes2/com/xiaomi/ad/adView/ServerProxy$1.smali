.class Lcom/xiaomi/ad/adView/ServerProxy$1;
.super Ljava/lang/Object;
.source "ServerProxy.java"

# interfaces
.implements Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/ServerProxy;

.field final synthetic val$listener:Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

.field final synthetic val$positionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/ServerProxy;Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/xiaomi/ad/adView/ServerProxy$1;->this$0:Lcom/xiaomi/ad/adView/ServerProxy;

    iput-object p2, p0, Lcom/xiaomi/ad/adView/ServerProxy$1;->val$listener:Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    iput-object p3, p0, Lcom/xiaomi/ad/adView/ServerProxy$1;->val$positionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoRequestError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy$1;->val$listener:Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;->onAdInfoRequestError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 81
    return-void
.end method

.method public onAdInfoRequestFinish(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/common/pojo/NativeAdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/xiaomi/ad/adView/ServerProxy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAdInfoRequestFinish in"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy$1;->this$0:Lcom/xiaomi/ad/adView/ServerProxy;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/ServerProxy;->access$100(Lcom/xiaomi/ad/adView/ServerProxy;)Lcom/xiaomi/ad/cache/AdCache;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/adView/ServerProxy$1;->val$positionId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/ad/cache/AdCache;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/xiaomi/ad/adView/ServerProxy$1;->val$listener:Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;->onAdInfoRequestFinish(Ljava/util/List;)V

    .line 88
    return-void
.end method

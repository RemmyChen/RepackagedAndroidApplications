.class Lcom/xiaomi/ad/NativeAd$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/NativeAd;

.field final synthetic val$error:Lcom/xiaomi/ad/common/pojo/AdError;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/NativeAd;Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAd$2;->this$0:Lcom/xiaomi/ad/NativeAd;

    iput-object p2, p0, Lcom/xiaomi/ad/NativeAd$2;->val$error:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd$2;->this$0:Lcom/xiaomi/ad/NativeAd;

    invoke-static {v0}, Lcom/xiaomi/ad/NativeAd;->access$300(Lcom/xiaomi/ad/NativeAd;)Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd$2;->val$error:Lcom/xiaomi/ad/common/pojo/AdError;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd$2;->this$0:Lcom/xiaomi/ad/NativeAd;

    invoke-static {v0}, Lcom/xiaomi/ad/NativeAd;->access$300(Lcom/xiaomi/ad/NativeAd;)Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/NativeAd$2;->val$error:Lcom/xiaomi/ad/common/pojo/AdError;

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;->onAdInfoRequestError(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 108
    :cond_0
    return-void
.end method

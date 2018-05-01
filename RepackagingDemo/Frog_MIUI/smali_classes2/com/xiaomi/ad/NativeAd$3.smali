.class Lcom/xiaomi/ad/NativeAd$3;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/NativeAd;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/NativeAd;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/xiaomi/ad/NativeAd$3;->this$0:Lcom/xiaomi/ad/NativeAd;

    iput-object p2, p0, Lcom/xiaomi/ad/NativeAd$3;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/xiaomi/ad/NativeAd;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdInfoRequestFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/NativeAd$3;->this$0:Lcom/xiaomi/ad/NativeAd;

    invoke-static {v2}, Lcom/xiaomi/ad/NativeAd;->access$300(Lcom/xiaomi/ad/NativeAd;)Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd$3;->this$0:Lcom/xiaomi/ad/NativeAd;

    invoke-static {v0}, Lcom/xiaomi/ad/NativeAd;->access$300(Lcom/xiaomi/ad/NativeAd;)Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAd$3;->this$0:Lcom/xiaomi/ad/NativeAd;

    invoke-static {v0}, Lcom/xiaomi/ad/NativeAd;->access$300(Lcom/xiaomi/ad/NativeAd;)Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/NativeAd$3;->val$list:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;->onAdInfoRequestFinish(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-static {}, Lcom/xiaomi/ad/NativeAd;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onAdListLoadedOnUI e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

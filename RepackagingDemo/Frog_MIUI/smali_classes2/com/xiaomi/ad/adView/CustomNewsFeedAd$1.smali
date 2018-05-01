.class Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;
.super Ljava/lang/Object;
.source "CustomNewsFeedAd.java"

# interfaces
.implements Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/ad/adView/CustomNewsFeedAd;

.field final synthetic val$count:I

.field final synthetic val$listener:Lcom/xiaomi/ad/NativeAdListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/adView/CustomNewsFeedAd;Lcom/xiaomi/ad/NativeAdListener;I)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->this$0:Lcom/xiaomi/ad/adView/CustomNewsFeedAd;

    iput-object p2, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->val$listener:Lcom/xiaomi/ad/NativeAdListener;

    iput p3, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdInfoRequestError(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->val$listener:Lcom/xiaomi/ad/NativeAdListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/NativeAdListener;->onNativeInfoFail(Lcom/xiaomi/ad/common/pojo/AdError;)V

    .line 60
    return-void
.end method

.method public onAdInfoRequestFinish(Ljava/util/List;)V
    .locals 8
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
    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->val$count:I

    if-ge v0, v1, :cond_0

    .line 66
    sget-object v0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "adList size is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", but less than request count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->val$count:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->val$count:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 70
    new-instance v4, Lcom/xiaomi/ad/NativeAdInfoIndex;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->getId()J

    move-result-wide v6

    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->this$0:Lcom/xiaomi/ad/adView/CustomNewsFeedAd;

    invoke-static {v0}, Lcom/xiaomi/ad/adView/CustomNewsFeedAd;->access$000(Lcom/xiaomi/ad/adView/CustomNewsFeedAd;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v6, v7, v0}, Lcom/xiaomi/ad/NativeAdInfoIndex;-><init>(JLjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/adView/CustomNewsFeedAd$1;->val$listener:Lcom/xiaomi/ad/NativeAdListener;

    invoke-interface {v0, v2}, Lcom/xiaomi/ad/NativeAdListener;->onNativeInfoSuccess(Ljava/util/List;)V

    .line 73
    return-void
.end method

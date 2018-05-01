.class public interface abstract Lcom/xiaomi/ad/NativeAd$NativeAdInfoRequestListener;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeAdInfoRequestListener"
.end annotation


# virtual methods
.method public abstract onAdInfoRequestError(Lcom/xiaomi/ad/common/pojo/AdError;)V
.end method

.method public abstract onAdInfoRequestFinish(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/common/pojo/NativeAdInfo;",
            ">;)V"
        }
    .end annotation
.end method

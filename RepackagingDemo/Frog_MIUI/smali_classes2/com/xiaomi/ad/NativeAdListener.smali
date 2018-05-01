.class public interface abstract Lcom/xiaomi/ad/NativeAdListener;
.super Ljava/lang/Object;
.source "NativeAdListener.java"


# virtual methods
.method public abstract onNativeInfoFail(Lcom/xiaomi/ad/common/pojo/AdError;)V
.end method

.method public abstract onNativeInfoSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/NativeAdInfoIndex;",
            ">;)V"
        }
    .end annotation
.end method

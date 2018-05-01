.class final Ljp/co/imobile/sdkads/android/aj;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/aj;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdDataReciveCompleted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljp/co/imobile/sdkads/android/aj;, "Ljp/co/imobile/sdkads/android/aj;"
    .local p1, "nativeAdDatas":Ljava/util/List;, "Ljava/util/List<Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljp/co/imobile/sdkads/android/ak;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/ak;-><init>(Ljp/co/imobile/sdkads/android/aj;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/aj;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/aj;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/aj;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

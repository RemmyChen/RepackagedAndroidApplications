.class final Ljp/co/imobile/sdkads/android/ai;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ai;->b:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/ai;->a:Ljava/util/Date;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdReadyCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ai;->a:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ai;->a:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ai;->b:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ai;->b:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "ImobileSdkAdsNativeInfeedAdapter"

    const-string v1, "Get spot data timeout."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

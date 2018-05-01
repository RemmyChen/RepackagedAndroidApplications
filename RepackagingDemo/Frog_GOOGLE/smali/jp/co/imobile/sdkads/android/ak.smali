.class final Ljp/co/imobile/sdkads/android/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/aj;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/aj;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ak;->a:Ljp/co/imobile/sdkads/android/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ak;->a:Ljp/co/imobile/sdkads/android/aj;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/aj;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ak;->a:Ljp/co/imobile/sdkads/android/aj;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/aj;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

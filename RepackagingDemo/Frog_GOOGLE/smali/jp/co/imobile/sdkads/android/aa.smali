.class final Ljp/co/imobile/sdkads/android/aa;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field final synthetic c:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;Landroid/os/Handler;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/aa;->c:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/aa;->a:Landroid/os/Handler;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/aa;->b:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdReadyCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/aa;->a:Landroid/os/Handler;

    new-instance v1, Ljp/co/imobile/sdkads/android/ab;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/ab;-><init>(Ljp/co/imobile/sdkads/android/aa;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

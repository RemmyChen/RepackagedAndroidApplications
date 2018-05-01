.class final Ljp/co/imobile/sdkads/android/af;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/af;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdReadyCompleted()V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/af;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/af;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->d(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdReadyCompleted()V

    :cond_0
    return-void
.end method

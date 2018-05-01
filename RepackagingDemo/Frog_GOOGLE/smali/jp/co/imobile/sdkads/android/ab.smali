.class final Ljp/co/imobile/sdkads/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/aa;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/aa;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ab;->a:Ljp/co/imobile/sdkads/android/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ab;->a:Ljp/co/imobile/sdkads/android/aa;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/aa;->c:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ab;->a:Ljp/co/imobile/sdkads/android/aa;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/aa;->b:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ab;->a:Ljp/co/imobile/sdkads/android/aa;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/aa;->c:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onNativeAdImageReciveCompleted(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

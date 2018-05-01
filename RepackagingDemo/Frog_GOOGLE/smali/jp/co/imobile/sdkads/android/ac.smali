.class final Ljp/co/imobile/sdkads/android/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ac;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ac;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ac;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->b(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/i;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ac;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/i;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

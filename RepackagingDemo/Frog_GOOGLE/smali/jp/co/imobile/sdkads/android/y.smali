.class final Ljp/co/imobile/sdkads/android/y;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field final synthetic c:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/y;->c:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/y;->a:Landroid/app/Activity;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/y;->b:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdReadyCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/y;->a:Landroid/app/Activity;

    new-instance v1, Ljp/co/imobile/sdkads/android/z;

    invoke-direct {v1, p0}, Ljp/co/imobile/sdkads/android/z;-><init>(Ljp/co/imobile/sdkads/android/y;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

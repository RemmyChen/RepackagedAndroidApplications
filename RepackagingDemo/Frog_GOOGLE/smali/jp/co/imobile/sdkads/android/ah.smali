.class final Ljp/co/imobile/sdkads/android/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

.field final synthetic b:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ah;->b:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/ah;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .local p0, "this":Ljp/co/imobile/sdkads/android/ah;, "Ljp/co/imobile/sdkads/android/ah;"
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ah;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->getClickEvent()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.class final Ljp/co/imobile/sdkads/android/h;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

.field final synthetic b:Ljp/co/imobile/sdkads/android/g;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/g;Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/h;->b:Ljp/co/imobile/sdkads/android/g;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/h;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdImageReciveCompleted(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "adImage"    # Landroid/graphics/Bitmap;

    .prologue
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/h;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/h;->b:Ljp/co/imobile/sdkads/android/g;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/g;->a(Ljp/co/imobile/sdkads/android/g;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/h;->b:Ljp/co/imobile/sdkads/android/g;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/g;->a(Ljp/co/imobile/sdkads/android/g;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

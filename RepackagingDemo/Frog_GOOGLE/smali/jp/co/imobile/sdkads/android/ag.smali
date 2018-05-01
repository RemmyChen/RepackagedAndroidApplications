.class final Ljp/co/imobile/sdkads/android/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->e(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->f(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->f(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdReadyCompleted()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->g(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    return-void

    :cond_0
    :try_start_1
    const-string v0, "NativeData."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeAdImage get Faild(URL). URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->e(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NativeAdImage get Faild(Image is null)."

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->f(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-result-object v1

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->RESPONSE:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    const-string v1, "NativeData."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeAdImage get Faild(URL). URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->e(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NativeAdImage get Faild(URL)."

    invoke-static {v1, v0}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ag;->a:Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->f(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    move-result-object v1

    sget-object v2, Ljp/co/imobile/sdkads/android/FailNotificationReason;->UNKNOWN:Ljp/co/imobile/sdkads/android/FailNotificationReason;

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V

    const-string v1, "NativeData."

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeImage get Faild(IO). Msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "NativeAdImage get Faild(IO)."

    invoke-static {v1, v0}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

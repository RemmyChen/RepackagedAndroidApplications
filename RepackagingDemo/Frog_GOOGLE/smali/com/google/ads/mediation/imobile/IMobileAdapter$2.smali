.class Lcom/google/ads/mediation/imobile/IMobileAdapter$2;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;
.source "IMobileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/imobile/IMobileAdapter;->requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/imobile/IMobileAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/ads/mediation/imobile/IMobileAdapter;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCliclkCompleted()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const-string v1, "Interstitial : onAdClickCompleted()"

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 346
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 348
    :cond_0
    return-void
.end method

.method public onAdCloseCompleted()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const-string v1, "Interstitial : onAdCloseCompleted()"

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 361
    :cond_0
    return-void
.end method

.method public onAdReadyCompleted()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const-string v1, "Interstitial : onAdReadyCompleted()"

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 317
    :cond_0
    return-void
.end method

.method public onAdShowCompleted()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const-string v1, "Interstitial : onAdShowCompleted()"

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 331
    :cond_0
    return-void
.end method

.method public onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V
    .locals 4
    .param p1, "reason"    # Ljp/co/imobile/sdkads/android/FailNotificationReason;

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] Interstitial : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/imobile/IMobileAdapter$3;->$SwitchMap$jp$co$imobile$sdkads$android$FailNotificationReason:[I

    invoke-virtual {p1}, Ljp/co/imobile/sdkads/android/FailNotificationReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 397
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 389
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 394
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$200(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$2;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

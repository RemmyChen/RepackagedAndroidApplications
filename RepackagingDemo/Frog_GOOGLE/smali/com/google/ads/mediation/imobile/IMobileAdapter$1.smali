.class Lcom/google/ads/mediation/imobile/IMobileAdapter$1;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;
.source "IMobileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/imobile/IMobileAdapter;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
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
    .line 140
    iput-object p1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdCliclkCompleted()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const-string v1, "Banner : onAdClickCompleted()"

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 175
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onAdReadyCompleted()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const-string v1, "Banner : onAdReadyCompleted()"

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onDismissAdScreen()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const-string v1, "Banner : onAdCloseCompleted()"

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onFailed(Ljp/co/imobile/sdkads/android/FailNotificationReason;)V
    .locals 4
    .param p1, "reason"    # Ljp/co/imobile/sdkads/android/FailNotificationReason;

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] Banner : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$000(Lcom/google/ads/mediation/imobile/IMobileAdapter;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/imobile/IMobileAdapter$3;->$SwitchMap$jp$co$imobile$sdkads$android$FailNotificationReason:[I

    invoke-virtual {p1}, Ljp/co/imobile/sdkads/android/FailNotificationReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/imobile/IMobileAdapter;->access$100(Lcom/google/ads/mediation/imobile/IMobileAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/imobile/IMobileAdapter$1;->this$0:Lcom/google/ads/mediation/imobile/IMobileAdapter;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    goto :goto_0

    .line 205
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

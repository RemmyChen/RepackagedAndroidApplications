.class public Lcom/google/ads/mediation/unity/UnityAdapter;
.super Ljava/lang/Object;
.source "UnityAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/mediation/OnContextChangedListener;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final KEY_GAME_ID:Ljava/lang/String; = "gameId"

.field private static final KEY_PLACEMENT_ID:Ljava/lang/String; = "zoneId"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoading:Z

.field private mIsRewardedVideoAdAdapterInitialized:Z

.field private mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field private mPlacementId:Ljava/lang/String;

.field private mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/ads/mediation/unity/UnityAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/ads/mediation/unity/UnityAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/unity/UnityAdapter$1;-><init>(Lcom/google/ads/mediation/unity/UnityAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/unity/UnityAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/unity/UnityAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mPlacementId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/unity/UnityAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/unity/UnityAdapter;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/ads/mediation/unity/UnityAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/mediation/unity/UnityAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/unity/UnityAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/unity/UnityAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/ads/mediation/unity/UnityAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/unity/UnityAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object v0
.end method

.method private static isValidContext(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 212
    if-nez p0, :cond_0

    .line 213
    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Context cannot be null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return v0

    .line 217
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 218
    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Context is not an Activity. Unity Ads requires an Activity context to load ads."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isValidIds(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "gameId"    # Ljava/lang/String;
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Game ID and Placement ID"

    .line 196
    .local v0, "ids":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be empty."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v1, 0x0

    .line 201
    .end local v0    # "ids":Ljava/lang/String;
    :goto_1
    return v1

    .line 194
    :cond_1
    const-string v0, "Game ID"

    goto :goto_0

    :cond_2
    const-string v0, "Placement ID"

    goto :goto_0

    .line 201
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "mediationRewardedVideoAdListener"    # Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .param p5, "serverParameters"    # Landroid/os/Bundle;
    .param p6, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 290
    iput-object p4, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 292
    const-string v1, "gameId"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "gameId":Ljava/lang/String;
    const-string v1, "zoneId"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mPlacementId:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mPlacementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdapter;->isValidIds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v1, p0, v3}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    .line 320
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 302
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityAdapter;->isValidContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/google/ads/mediation/unity/UnitySingleton;->initializeUnityAds(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v1, p0, v3}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    goto :goto_0

    .line 316
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 318
    iput-boolean v3, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mIsRewardedVideoAdAdapterInitialized:Z

    .line 319
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mIsRewardedVideoAdAdapterInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p2, "serverParameters"    # Landroid/os/Bundle;
    .param p3, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 327
    iput-boolean v2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mIsLoading:Z

    .line 328
    const-string v0, "zoneId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mPlacementId:Ljava/lang/String;

    .line 329
    const-string v0, "gameId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mPlacementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdapter;->isValidIds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    invoke-static {v0}, Lcom/google/ads/mediation/unity/UnitySingleton;->loadAd(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;)V

    goto :goto_0
.end method

.method public onContextChanged(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 373
    sget-object v0, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Context is not an Activity. Unity Ads requires an Activity context to show ads."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 379
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediationInterstitialListener"    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "mediationExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 231
    iput-object p2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 233
    const-string v1, "gameId"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "gameId":Ljava/lang/String;
    const-string v1, "zoneId"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mPlacementId:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mPlacementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/ads/mediation/unity/UnityAdapter;->isValidIds(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v1, p0, v3}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 262
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {p1}, Lcom/google/ads/mediation/unity/UnityAdapter;->isValidContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lcom/google/ads/mediation/unity/UnitySingleton;->initializeUnityAds(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v1, p0, v3}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 257
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 260
    iput-boolean v3, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mIsLoading:Z

    .line 261
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    invoke-static {v1}, Lcom/google/ads/mediation/unity/UnitySingleton;->loadAd(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 270
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 271
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 273
    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    const-string v2, "An activity context is required to show Unity Ads, please call RewardedVideoAd#resume(Context) in your Activity\'s onResume."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    invoke-static {v1, v0}, Lcom/google/ads/mediation/unity/UnitySingleton;->showAd(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public showVideo()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 343
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 344
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 346
    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    const-string v2, "An activity context is required to show Unity Ads, please call RewardedVideoAd#resume(Context) in your Activity\'s onResume."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/unity/UnityAdapter;->mUnityAdapterDelegate:Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    invoke-static {v1, v0}, Lcom/google/ads/mediation/unity/UnitySingleton;->showAd(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;Landroid/app/Activity;)V

    goto :goto_0
.end method

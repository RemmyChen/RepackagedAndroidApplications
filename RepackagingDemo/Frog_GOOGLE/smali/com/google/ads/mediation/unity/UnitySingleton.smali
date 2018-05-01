.class public final Lcom/google/ads/mediation/unity/UnitySingleton;
.super Ljava/lang/Object;
.source "UnitySingleton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;
    }
.end annotation


# static fields
.field private static mAdShowingAdapterDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/mediation/unity/UnityAdapterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static mUnityAdapterDelegatesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/mediation/unity/UnityAdapterDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private static unitySingletonListenerInstance:Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/unity/UnitySingleton;->mUnityAdapterDelegatesSet:Ljava/util/Set;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/ads/mediation/unity/UnitySingleton;->mUnityAdapterDelegatesSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/ads/mediation/unity/UnitySingleton;->mAdShowingAdapterDelegate:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static addUnityAdapterDelegate(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;)V
    .locals 4
    .param p0, "unityAdapterDelegate"    # Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .prologue
    .line 74
    sget-object v2, Lcom/google/ads/mediation/unity/UnitySingleton;->mUnityAdapterDelegatesSet:Ljava/util/Set;

    .line 75
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 76
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/unity/UnityAdapterDelegate;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .line 78
    .local v0, "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    if-nez v0, :cond_1

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    .end local v0    # "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    :goto_1
    return-void

    .line 84
    :cond_2
    sget-object v2, Lcom/google/ads/mediation/unity/UnitySingleton;->mUnityAdapterDelegatesSet:Ljava/util/Set;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getInstance()Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/ads/mediation/unity/UnitySingleton;->unitySingletonListenerInstance:Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;-><init>(Lcom/google/ads/mediation/unity/UnitySingleton$1;)V

    sput-object v0, Lcom/google/ads/mediation/unity/UnitySingleton;->unitySingletonListenerInstance:Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;

    .line 64
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/unity/UnitySingleton;->unitySingletonListenerInstance:Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;

    return-object v0
.end method

.method public static initializeUnityAds(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3
    .param p0, "delegate"    # Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    sget-object v1, Lcom/google/ads/mediation/unity/UnityAdapter;->TAG:Ljava/lang/String;

    const-string v2, "The current device is not supported by Unity Ads."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x0

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-static {p0}, Lcom/google/ads/mediation/unity/UnitySingleton;->addUnityAdapterDelegate(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;)V

    .line 115
    new-instance v0, Lcom/unity3d/ads/metadata/MediationMetaData;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/metadata/MediationMetaData;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "mediationMetaData":Lcom/unity3d/ads/metadata/MediationMetaData;
    const-string v2, "AdMob"

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/metadata/MediationMetaData;->setName(Ljava/lang/String;)V

    .line 117
    const-string v2, "2.1.2.0"

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/metadata/MediationMetaData;->setVersion(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Lcom/unity3d/ads/metadata/MediationMetaData;->commit()V

    .line 120
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->getInstance()Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V

    goto :goto_0
.end method

.method protected static loadAd(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;)V
    .locals 2
    .param p0, "delegate"    # Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .prologue
    .line 137
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {p0}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {p0}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->onUnityAdsReady(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 142
    invoke-interface {p0}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-interface {p0, v0, v1}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static showAd(Lcom/google/ads/mediation/unity/UnityAdapterDelegate;Landroid/app/Activity;)V
    .locals 1
    .param p0, "delegate"    # Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/ads/mediation/unity/UnitySingleton;->mAdShowingAdapterDelegate:Ljava/lang/ref/WeakReference;

    .line 158
    invoke-interface {p0}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 159
    return-void
.end method

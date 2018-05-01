.class final Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;
.super Ljava/lang/Object;
.source "UnitySingleton.java"

# interfaces
.implements Lcom/unity3d/ads/mediation/IUnityAdsExtendedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/unity/UnitySingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnitySingletonListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/unity/UnitySingleton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/ads/mediation/unity/UnitySingleton$1;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/ads/mediation/unity/UnitySingleton$UnitySingletonListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnityAdsClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .line 201
    .local v0, "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->onUnityAdsClick(Ljava/lang/String;)V

    .line 205
    .end local v0    # "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    :cond_0
    return-void
.end method

.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 3
    .param p1, "unityAdsError"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "placementId"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 232
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/unity/UnityAdapterDelegate;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .line 234
    .local v0, "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    invoke-interface {v0, p1, p2}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 239
    .end local v0    # "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    :cond_1
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "finishState"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 219
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .line 221
    .local v0, "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p1, p2}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    .line 225
    .end local v0    # "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    :cond_0
    return-void
.end method

.method public onUnityAdsPlacementStateChanged(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$PlacementState;Lcom/unity3d/ads/UnityAds$PlacementState;)V
    .locals 0
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "oldState"    # Lcom/unity3d/ads/UnityAds$PlacementState;
    .param p3, "newState"    # Lcom/unity3d/ads/UnityAds$PlacementState;

    .prologue
    .line 213
    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/unity/UnityAdapterDelegate;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .line 176
    .local v0, "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v0, p1}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->onUnityAdsReady(Ljava/lang/String;)V

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 181
    .end local v0    # "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    :cond_1
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Lcom/google/ads/mediation/unity/UnitySingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;

    .line 189
    .local v0, "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Lcom/google/ads/mediation/unity/UnityAdapterDelegate;->onUnityAdsStart(Ljava/lang/String;)V

    .line 193
    .end local v0    # "delegate":Lcom/google/ads/mediation/unity/UnityAdapterDelegate;
    :cond_0
    return-void
.end method

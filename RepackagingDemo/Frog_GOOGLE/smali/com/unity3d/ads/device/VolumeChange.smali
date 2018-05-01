.class public Lcom/unity3d/ads/device/VolumeChange;
.super Ljava/lang/Object;
.source "VolumeChange.java"


# static fields
.field private static _contentObserver:Landroid/database/ContentObserver;

.field private static _listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/device/IVolumeChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/unity3d/ads/device/VolumeChange;->triggerListeners()V

    return-void
.end method

.method public static clearAllListeners()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/device/VolumeChange;->stopObservering()V

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public static registerListener(Lcom/unity3d/ads/device/IVolumeChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/unity3d/ads/device/IVolumeChangeListener;

    .prologue
    .line 61
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    .line 65
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Lcom/unity3d/ads/device/VolumeChange;->startObserving()V

    .line 67
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_1
    return-void
.end method

.method public static startObserving()V
    .locals 5

    .prologue
    .line 19
    sget-object v2, Lcom/unity3d/ads/device/VolumeChange;->_contentObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_0

    .line 20
    new-instance v2, Lcom/unity3d/ads/device/VolumeChange$1;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Lcom/unity3d/ads/device/VolumeChange$1;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/unity3d/ads/device/VolumeChange;->_contentObserver:Landroid/database/ContentObserver;

    .line 32
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 37
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 38
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    sget-object v4, Lcom/unity3d/ads/device/VolumeChange;->_contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public static stopObservering()V
    .locals 3

    .prologue
    .line 45
    sget-object v2, Lcom/unity3d/ads/device/VolumeChange;->_contentObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_1

    .line 46
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 52
    sget-object v2, Lcom/unity3d/ads/device/VolumeChange;->_contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 56
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/unity3d/ads/device/VolumeChange;->_contentObserver:Landroid/database/ContentObserver;

    .line 58
    :cond_1
    return-void
.end method

.method private static triggerListeners()V
    .locals 4

    .prologue
    .line 91
    sget-object v2, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "currentVolume":I
    .local v1, "listener":Lcom/unity3d/ads/device/IVolumeChangeListener;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcom/unity3d/ads/device/IVolumeChangeListener;
    check-cast v1, Lcom/unity3d/ads/device/IVolumeChangeListener;

    .line 93
    .restart local v1    # "listener":Lcom/unity3d/ads/device/IVolumeChangeListener;
    invoke-interface {v1}, Lcom/unity3d/ads/device/IVolumeChangeListener;->getStreamType()I

    .end local v0    # "currentVolume":I
    move-result v3

    invoke-static {v3}, Lcom/unity3d/ads/device/Device;->getStreamVolume(I)I

    move-result v0

    .line 94
    .restart local v0    # "currentVolume":I
    invoke-interface {v1, v0}, Lcom/unity3d/ads/device/IVolumeChangeListener;->onVolumeChanged(I)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public static unregisterListener(Lcom/unity3d/ads/device/IVolumeChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/unity3d/ads/device/IVolumeChangeListener;

    .prologue
    .line 72
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/ads/device/VolumeChange;->_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 77
    :cond_1
    invoke-static {}, Lcom/unity3d/ads/device/VolumeChange;->stopObservering()V

    .line 79
    :cond_2
    return-void
.end method

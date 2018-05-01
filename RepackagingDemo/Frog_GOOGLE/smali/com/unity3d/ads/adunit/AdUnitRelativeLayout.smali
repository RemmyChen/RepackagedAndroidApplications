.class public Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AdUnitRelativeLayout.java"


# instance fields
.field private _maxEvents:I

.field private final _motionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unity3d/ads/adunit/AdUnitMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private _shouldCapture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    .line 14
    const/16 v0, 0x2710

    iput v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    .line 19
    return-void
.end method


# virtual methods
.method public clearCapture()V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endCapture()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    .line 44
    return-void
.end method

.method public getCurrentEventCount()I
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEventCount(Ljava/util/ArrayList;)Landroid/util/SparseIntArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseIntArray;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "eventTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 92
    .local v2, "returnArray":Landroid/util/SparseIntArray;
    iget-object v4, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v4

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;

    .line 94
    .local v0, "currentEvent":Lcom/unity3d/ads/adunit/AdUnitMotionEvent;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 95
    .local v1, "currentType":Ljava/lang/Integer;
    invoke-virtual {v0}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 101
    .end local v0    # "currentEvent":Lcom/unity3d/ads/adunit/AdUnitMotionEvent;
    .end local v1    # "currentType":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    return-object v2
.end method

.method public getEvents(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/unity3d/ads/adunit/AdUnitMotionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "requestedInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 64
    .local v0, "countTable":Landroid/util/SparseIntArray;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .local v4, "returnData":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/unity3d/ads/adunit/AdUnitMotionEvent;>;>;"
    iget-object v6, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v6

    .line 67
    :try_start_0
    iget-object v5, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;

    .line 68
    .local v1, "currentEvent":Lcom/unity3d/ads/adunit/AdUnitMotionEvent;
    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 69
    .local v3, "currentRequestedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 70
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 72
    .local v2, "currentRequestedInfoIndex":I
    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 73
    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 74
    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v5

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 81
    :cond_2
    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v1}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 84
    .end local v1    # "currentEvent":Lcom/unity3d/ads/adunit/AdUnitMotionEvent;
    .end local v2    # "currentRequestedInfoIndex":I
    .end local v3    # "currentRequestedInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    return-object v4
.end method

.method public getMaxEventCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 25
    iget-boolean v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    if-ge v0, v1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 28
    .local v2, "isObscured":Z
    :goto_0
    iget-object v12, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    monitor-enter v12

    .line 29
    :try_start_0
    iget-object v13, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_motionEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v11

    invoke-direct/range {v0 .. v11}, Lcom/unity3d/ads/adunit/AdUnitMotionEvent;-><init>(IZIIIFFJFF)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v12

    .line 34
    .end local v2    # "isObscured":Z
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 30
    .restart local v2    # "isObscured":Z
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startCapture(I)V
    .locals 1
    .param p1, "maxEvents"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_maxEvents:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/adunit/AdUnitRelativeLayout;->_shouldCapture:Z

    .line 40
    return-void
.end method

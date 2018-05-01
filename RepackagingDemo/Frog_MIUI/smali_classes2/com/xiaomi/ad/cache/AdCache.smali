.class public Lcom/xiaomi/ad/cache/AdCache;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;,
        Lcom/xiaomi/ad/cache/AdCache$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final a:I = 0x32

.field private static b:Lcom/xiaomi/ad/cache/AdCache;


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/ad/cache/AdCache$InsideArrayList",
            "<",
            "Lcom/xiaomi/ad/cache/AdCache$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/xiaomi/ad/cache/AdCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/ad/cache/AdCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    return-void
.end method

.method public static declared-synchronized a()Lcom/xiaomi/ad/cache/AdCache;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/xiaomi/ad/cache/AdCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/ad/cache/AdCache;->b:Lcom/xiaomi/ad/cache/AdCache;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/xiaomi/ad/cache/AdCache;

    invoke-direct {v0}, Lcom/xiaomi/ad/cache/AdCache;-><init>()V

    sput-object v0, Lcom/xiaomi/ad/cache/AdCache;->b:Lcom/xiaomi/ad/cache/AdCache;

    .line 33
    :cond_0
    sget-object v0, Lcom/xiaomi/ad/cache/AdCache;->b:Lcom/xiaomi/ad/cache/AdCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/xiaomi/ad/cache/AdCache$a;)Z
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/xiaomi/ad/cache/AdCache$a;->d:J

    sub-long/2addr v0, v2

    iget-object v2, p1, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-virtual {v2}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->getExpireTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    invoke-virtual {v0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$a;

    .line 148
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/cache/AdCache;->a(Lcom/xiaomi/ad/cache/AdCache$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 155
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 159
    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;J)Lcom/xiaomi/ad/common/pojo/NativeAdInfo;
    .locals 6

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/ad/cache/AdCache;->b()V

    .line 79
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/ad/cache/AdCache$a;

    iget-object v1, v1, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-virtual {v1}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->getId()J

    move-result-wide v4

    cmp-long v1, v4, p2

    if-nez v1, :cond_0

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$a;

    iget-object v0, v0, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :goto_1
    monitor-exit p0

    return-object v0

    .line 81
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    sget-object v1, Lcom/xiaomi/ad/cache/AdCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCachedAdInfo e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/common/pojo/NativeAdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;-><init>(Lcom/xiaomi/ad/cache/AdCache;I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v2, v0

    .line 124
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    new-instance v3, Lcom/xiaomi/ad/cache/AdCache$a;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/xiaomi/ad/cache/AdCache$a;-><init>(Lcom/xiaomi/ad/cache/AdCache;Lcom/xiaomi/ad/common/pojo/NativeAdInfo;J)V

    invoke-virtual {v0, v3}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 127
    :cond_3
    sget-object v1, Lcom/xiaomi/ad/cache/AdCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putCachedAdInfo finish "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$a;

    iget-object v0, v0, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_2
    sget-object v1, Lcom/xiaomi/ad/cache/AdCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "putCachedAdInfo e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/ad/cache/AdCache;->b()V

    .line 43
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    invoke-virtual {v0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v0, p2, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 49
    :goto_0
    monitor-exit p0

    return v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_1
    sget-object v1, Lcom/xiaomi/ad/cache/AdCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "containValidCache e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/NativeAdInfoIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    invoke-virtual {v0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->size()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 56
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    invoke-virtual {v0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    invoke-virtual {v0, v2}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$a;

    iget-object v0, v0, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    .line 58
    new-instance v3, Lcom/xiaomi/ad/NativeAdInfoIndex;

    invoke-virtual {v0}, Lcom/xiaomi/ad/common/pojo/NativeAdInfo;->getId()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p1}, Lcom/xiaomi/ad/NativeAdInfoIndex;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 65
    :goto_1
    monitor-exit p0

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    sget-object v1, Lcom/xiaomi/ad/cache/AdCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCachedAdInfoIndex e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/ad/common/pojo/NativeAdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 102
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/ad/cache/AdCache;->b()V

    .line 103
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    invoke-virtual {v0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->size()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :goto_0
    if-ge v2, p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaomi/ad/cache/AdCache;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/cache/AdCache$a;

    iget-object v0, v0, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 113
    :goto_1
    monitor-exit p0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    sget-object v1, Lcom/xiaomi/ad/cache/AdCache;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCachedAdInfos e : "

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

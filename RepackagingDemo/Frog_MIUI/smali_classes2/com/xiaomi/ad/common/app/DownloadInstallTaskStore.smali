.class public Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;
.super Ljava/lang/Object;
.source "DownloadInstallTaskStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadInstallTaskStore"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDldMgr:Landroid/app/DownloadManager;

.field private mIdMappings:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageMappings:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRestoreTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPackageMappings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    new-instance v0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore$1;-><init>(Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;)V

    iput-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mRestoreTask:Ljava/lang/Runnable;

    .line 35
    invoke-static {p1}, Lcom/xiaomi/ad/internal/common/b/a;->m(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DownloadInstallTaskStore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPrefs:Landroid/content/SharedPreferences;

    .line 37
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mDldMgr:Landroid/app/DownloadManager;

    .line 38
    invoke-virtual {p0}, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;)Landroid/app/DownloadManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mDldMgr:Landroid/app/DownloadManager;

    return-object v0
.end method


# virtual methods
.method public addTask(JLcom/xiaomi/ad/common/app/DownloadInstallManager$Request;)V
    .locals 3

    .prologue
    .line 46
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;->mPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPackageMappings:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p3, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mRestoreTask:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method

.method public queryDownloadTask(J)Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;

    return-object v0
.end method

.method public queryInstallTask(Ljava/lang/String;)Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPackageMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDownloadTask(J)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mIdMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    :cond_0
    return-void
.end method

.method public removeInstallTask(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPackageMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaomi/ad/common/app/DownloadInstallTaskStore;->mPackageMappings:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    return-void
.end method

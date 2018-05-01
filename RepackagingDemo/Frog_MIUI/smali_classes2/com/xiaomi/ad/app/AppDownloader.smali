.class public Lcom/xiaomi/ad/app/AppDownloader;
.super Ljava/lang/Object;
.source "AppDownloader.java"


# instance fields
.field private mApkUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/app/AppDownloader;->mContext:Landroid/content/Context;

    .line 15
    iput-object p3, p0, Lcom/xiaomi/ad/app/AppDownloader;->mApkUrl:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/xiaomi/ad/app/AppDownloader;->mPackageName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/xiaomi/ad/app/AppDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/ad/common/app/DownloadInstallManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/common/app/DownloadInstallManager;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;

    iget-object v2, p0, Lcom/xiaomi/ad/app/AppDownloader;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/ad/app/AppDownloader;->mApkUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/ad/common/app/DownloadInstallManager;->enqueue(Lcom/xiaomi/ad/common/app/DownloadInstallManager$Request;)V

    .line 21
    return-void
.end method

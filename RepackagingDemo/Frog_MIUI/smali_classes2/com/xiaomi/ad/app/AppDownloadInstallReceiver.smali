.class public abstract Lcom/xiaomi/ad/app/AppDownloadInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppDownloadInstallReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppDownloadInstallReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onInstallCompleted(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 17
    if-nez p2, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    sget-object v0, Lcom/xiaomi/ad/common/app/DownloadInstallManager;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    const-string/jumbo v1, "AppDownloadInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v1, "AppDownloadInstallReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive : package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lcom/xiaomi/ad/common/app/DownloadInstallManager;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/ad/app/AppDownloadInstallReceiver;->onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    sget-object v1, Lcom/xiaomi/ad/common/app/DownloadInstallManager;->ACTION_INSTALL_COMPLETED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/ad/app/AppDownloadInstallReceiver;->onInstallCompleted(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

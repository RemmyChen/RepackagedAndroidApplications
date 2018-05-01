.class public Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;
.super Ljava/lang/Object;
.source "GDTReportModel.java"


# static fields
.field private static final KEY_FINISH_DOWNLOAD_MONITOR_URLS:Ljava/lang/String; = "finishDownloadMonitorUrls"

.field private static final KEY_START_DOWNLOAD_MONITOR_URLS:Ljava/lang/String; = "startDownloadMonitorUrls"

.field private static final KEY_START_INSTALL_MONITOR_URLS:Ljava/lang/String; = "startInstallMonitorUrls"

.field private static final TAG:Ljava/lang/String; = "GDTReportModel"


# instance fields
.field private mClickId:Ljava/lang/String;

.field private mClickUrl:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mFinishDownloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDownloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartInstallUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mClickUrl:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mMonitorUrls:Ljava/util/List;

    .line 35
    const-string/jumbo v0, "startDownloadMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->parseArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartDownloadUrls:Ljava/util/List;

    .line 36
    const-string/jumbo v0, "finishDownloadMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->parseArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mFinishDownloadUrls:Ljava/util/List;

    .line 37
    const-string/jumbo v0, "startInstallMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->parseArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartInstallUrls:Ljava/util/List;

    .line 38
    return-void
.end method

.method private parseArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 52
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-object v1
.end method

.method public static parseData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;"
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    const-string/jumbo v0, "GDTReportModel"

    const-string/jumbo v1, "parseData error"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public getClickId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mClickId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mClickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFinishDownloadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mFinishDownloadUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mFinishDownloadUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    const-string/jumbo v0, "GDTReportModel"

    const-string/jumbo v1, "finishDownloadUrls is null"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mFinishDownloadUrls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMonitorUrls()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mMonitorUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mMonitorUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const-string/jumbo v0, "GDTReportModel"

    const-string/jumbo v1, "monitorUrls is null"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mMonitorUrls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartDownloadUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartDownloadUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartDownloadUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const-string/jumbo v0, "GDTReportModel"

    const-string/jumbo v1, "startDownloadUrls is null"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartDownloadUrls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartInstallUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartDownloadUrls:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartDownloadUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const-string/jumbo v0, "GDTReportModel"

    const-string/jumbo v1, "startDownloadUrls is null"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mStartInstallUrls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setClickId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mClickId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xiaomi/ad/common/pojo/gdt/GDTReportModel;->mDownloadUrl:Ljava/lang/String;

    .line 113
    return-void
.end method

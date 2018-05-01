.class public Lcom/xiaomi/ad/internal/common/module/g;
.super Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;
.source "SdkUpdater.java"


# static fields
.field public static final KEY_VERSION:Ljava/lang/String; = "sv"

.field private static final TAG:Ljava/lang/String; = "SdkUpdater"

.field public static final aS:Ljava/lang/String; = "apiLevel"

.field public static final aT:Ljava/lang/String; = "name"

.field public static final aU:Ljava/lang/String; = "packageName"

.field public static final aV:Ljava/lang/String; = "c"


# instance fields
.field private aW:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/xiaomi/ad/internal/common/module/g;->aW:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/g;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected T()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;I)V
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Lcom/xiaomi/ad/common/SdkConfig;->getUpdateServer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;->mUrl:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/g;->aW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "packageName"

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/g;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v0, "sv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "apiLevel"

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/xiaomi/ad/internal/common/c;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/g;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/ad/internal/common/c;-><init>(Landroid/content/Context;)V

    .line 37
    const-string/jumbo v1, "c"

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-boolean v1, Lcom/xiaomi/ad/common/SdkConfig;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v1, "SdkUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "client info "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/ad/internal/common/c;->h()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "SdkUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$HttpRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected j(Ljava/lang/String;)Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    :try_start_0
    const-string/jumbo v0, "SdkUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;

    invoke-direct {v0}, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;-><init>()V

    .line 49
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v4, "lUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;->aP:Ljava/lang/String;

    .line 51
    const-string/jumbo v4, "forcestop"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/xiaomi/ad/internal/common/module/ModuleUpdater$a;->aA:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    return-object v0

    :cond_0
    move v1, v2

    .line 51
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v0, 0x0

    goto :goto_1
.end method

.class public Lcom/google/littleDog/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# static fields
.field private static final ADCLICK:I = 0x7

.field static final ADPID:Ljava/lang/String; = "1705100002"

.field private static final ASK_BANNER_AD:Z = true

.field private static final ISDEBUG:Z = false

.field private static final SHOWHINTSPLASH:I = 0x6

.field private static final SHOWPROGRESS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SplashActivity_xyz"

.field private static has_permission:Z

.field private static isAdClick:Z

.field private static isAdSkip:Z


# instance fields
.field private dataIsCopy:Z

.field handler:Landroid/os/Handler;

.field private isIntented:Z

.field private permissionReqCount:I

.field private pro_dialog:Landroid/app/ProgressDialog;

.field private splashAd:Lcom/xiaomi/ad/adView/SplashAd;

.field private splashAdNeedHintShowCount:I

.field private splashIsShow:Z

.field private utils_config_sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    sput-boolean v1, Lcom/google/littleDog/SplashActivity;->isAdClick:Z

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/littleDog/SplashActivity;->isAdSkip:Z

    .line 48
    sput-boolean v1, Lcom/google/littleDog/SplashActivity;->has_permission:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->dataIsCopy:Z

    .line 50
    iput-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->splashIsShow:Z

    .line 51
    iput v1, p0, Lcom/google/littleDog/SplashActivity;->splashAdNeedHintShowCount:I

    .line 52
    iput v1, p0, Lcom/google/littleDog/SplashActivity;->permissionReqCount:I

    .line 57
    new-instance v0, Lcom/google/littleDog/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/google/littleDog/SplashActivity$1;-><init>(Lcom/google/littleDog/SplashActivity;)V

    iput-object v0, p0, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    .line 114
    iput-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->isIntented:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/littleDog/SplashActivity;->pro_dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$002(Lcom/google/littleDog/SplashActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/littleDog/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/littleDog/SplashActivity;->splashIsShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/littleDog/SplashActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/littleDog/SplashActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/littleDog/SplashActivity;->gotoNextActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/littleDog/SplashActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/littleDog/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/littleDog/SplashActivity;->dataIsCopy:Z

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/google/littleDog/SplashActivity;->isAdClick:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 36
    sput-boolean p0, Lcom/google/littleDog/SplashActivity;->isAdClick:Z

    return p0
.end method

.method private closeProgress()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity;->pro_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity;->pro_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 187
    :cond_0
    return-void
.end method

.method private getShowHintSplashCount()I
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity;->utils_config_sp:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "splashAdNeedHintShowCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private gotoNextActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-static {p1}, Lcom/google/littleDog/SplashActivity;->showLog(Ljava/lang/String;)V

    .line 478
    iget-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->isIntented:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->splashIsShow:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->dataIsCopy:Z

    if-eqz v1, :cond_0

    .line 480
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->isIntented:Z

    .line 481
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/gree/unitywebview/CUnityPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/littleDog/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 483
    invoke-direct {p0}, Lcom/google/littleDog/SplashActivity;->removeHandlerLoop()V

    .line 486
    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->finish()V

    .line 489
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getRequestedOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/google/utils/XmApi;->setOritation(I)V

    .line 278
    sget-boolean v0, Lcom/google/utils/XmParms;->isHengPin:Z

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/littleDog/SplashActivity;->setRequestedOrientation(I)V

    .line 282
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/littleDog/SplashActivity;->pro_dialog:Landroid/app/ProgressDialog;

    .line 290
    invoke-static {p0}, Lcom/google/utils/MiUtils;->isFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/utils/MiUtils;->isNewObbVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    :cond_1
    new-instance v0, Lcom/google/littleDog/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/google/littleDog/SplashActivity$2;-><init>(Lcom/google/littleDog/SplashActivity;)V

    .line 308
    invoke-virtual {v0}, Lcom/google/littleDog/SplashActivity$2;->start()V

    .line 315
    :goto_0
    return-void

    .line 310
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/littleDog/SplashActivity;->dataIsCopy:Z

    goto :goto_0
.end method

.method private isNeedHintSplash()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/littleDog/SplashActivity;->splashAdNeedHintShowCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeHandlerLoop()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    return-void
.end method

.method private resetSplashAdNeedHintShowCount()V
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/littleDog/SplashActivity;->splashAdNeedHintShowCount:I

    .line 160
    return-void
.end method

.method private setPro_dialogProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity;->pro_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 164
    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 497
    return-void
.end method

.method private showProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 180
    return-void
.end method

.method private subSplashAdNeedHintShowCount()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/google/littleDog/SplashActivity;->splashAdNeedHintShowCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/littleDog/SplashActivity;->splashAdNeedHintShowCount:I

    .line 151
    return-void
.end method

.method private upDateShowHintSplashCountSP()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity;->utils_config_sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "splashAdNeedHintShowCount"

    iget v2, p0, Lcom/google/littleDog/SplashActivity;->splashAdNeedHintShowCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/google/littleDog/SplashActivity;->requestWindowFeature(I)Z

    .line 123
    invoke-static {p0}, Lcom/google/utils/XmApi;->onAppCreate(Landroid/content/Context;)V

    .line 127
    const-string/jumbo v1, "utils_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/littleDog/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/littleDog/SplashActivity;->utils_config_sp:Landroid/content/SharedPreferences;

    .line 129
    invoke-static {p0}, Lcom/google/utils/MiUtils;->isGrantExternalRW(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/google/littleDog/SplashActivity;->showLog(Ljava/lang/String;)V

    .line 131
    sput-boolean v3, Lcom/google/littleDog/SplashActivity;->has_permission:Z

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/google/littleDog/SplashActivity;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    invoke-virtual {p0, p0}, Lcom/google/littleDog/SplashActivity;->showSplash(Landroid/content/Context;)V

    .line 145
    :cond_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 455
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 456
    sget-boolean v0, Lcom/google/littleDog/SplashActivity;->has_permission:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 461
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 210
    if-ne p1, v9, :cond_3

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "denyPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_1

    .line 214
    aget-object v5, p2, v4

    .line 215
    .local v5, "permission":Ljava/lang/String;
    aget v3, p3, v4

    .line 216
    .local v3, "grant":I
    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "grant":I
    .end local v5    # "permission":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 224
    .local v0, "denyPermissionStr":[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 225
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v4

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 227
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_3

    .line 228
    iget v6, p0, Lcom/google/littleDog/SplashActivity;->permissionReqCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/littleDog/SplashActivity;->permissionReqCount:I

    .line 229
    iget v6, p0, Lcom/google/littleDog/SplashActivity;->permissionReqCount:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    .line 230
    invoke-virtual {p0, v0, v9}, Lcom/google/littleDog/SplashActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 265
    .end local v0    # "denyPermissionStr":[Ljava/lang/String;
    .end local v1    # "denyPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 233
    .restart local v0    # "denyPermissionStr":[Ljava/lang/String;
    .restart local v1    # "denyPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xyz_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u8bf7\u6c42\u6743\u9650\u8fdb\u5165\u6b7b\u5faa\u73af\u4e86!!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xyz_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u8bf7\u6c42\u6743\u9650\u8fdb\u5165\u6b7b\u5faa\u73af\u4e86!!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xyz_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\u8bf7\u6c42\u6743\u9650\u8fdb\u5165\u6b7b\u5faa\u73af\u4e86!!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v4, 0x0

    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_5

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xyz_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u95ee\u9898\u6743\u9650 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 239
    :cond_5
    sput-boolean v9, Lcom/google/littleDog/SplashActivity;->has_permission:Z

    .line 242
    :try_start_0
    invoke-direct {p0}, Lcom/google/littleDog/SplashActivity;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_4
    invoke-virtual {p0, p0}, Lcom/google/littleDog/SplashActivity;->showSplash(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 253
    .end local v0    # "denyPermissionStr":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    sput-boolean v9, Lcom/google/littleDog/SplashActivity;->has_permission:Z

    .line 256
    :try_start_1
    invoke-direct {p0}, Lcom/google/littleDog/SplashActivity;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    :goto_5
    invoke-virtual {p0, p0}, Lcom/google/littleDog/SplashActivity;->showSplash(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 257
    :catch_1
    move-exception v2

    .line 258
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 435
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 436
    sget-boolean v0, Lcom/google/littleDog/SplashActivity;->has_permission:Z

    if-eqz v0, :cond_1

    .line 437
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 439
    iget-boolean v0, p0, Lcom/google/littleDog/SplashActivity;->splashIsShow:Z

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/littleDog/SplashActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    :cond_0
    iput-boolean v1, p0, Lcom/google/littleDog/SplashActivity;->splashIsShow:Z

    .line 445
    :cond_1
    const-string/jumbo v0, "SplashActivity_xyz"

    const-string/jumbo v1, "on resume "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 467
    return-void
.end method

.method public showSplash(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x400

    const/4 v6, -0x1

    .line 324
    const-string/jumbo v4, "xyz_1705100002"

    const-string/jumbo v5, "ASK_SPLASH_AD"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 338
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, "flayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 340
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    const-string/jumbo v2, "default_splash_"

    .line 347
    .local v2, "imgname":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/google/littleDog/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 351
    .local v1, "imgid":I
    new-instance v4, Lcom/xiaomi/ad/adView/SplashAd;

    new-instance v5, Lcom/google/littleDog/SplashActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/google/littleDog/SplashActivity$3;-><init>(Lcom/google/littleDog/SplashActivity;Landroid/widget/FrameLayout;)V

    invoke-direct {v4, p0, v0, v1, v5}, Lcom/xiaomi/ad/adView/SplashAd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/xiaomi/ad/SplashAdListener;)V

    iput-object v4, p0, Lcom/google/littleDog/SplashActivity;->splashAd:Lcom/xiaomi/ad/adView/SplashAd;

    .line 408
    const-string/jumbo v4, "ad_splash_request"

    invoke-static {p0, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    sget-object v4, Lcom/google/utils/XmParms;->sBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ad_splash_request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v4, p0, Lcom/google/littleDog/SplashActivity;->splashAd:Lcom/xiaomi/ad/adView/SplashAd;

    sget-object v5, Lcom/google/utils/XmParms;->POSITION_ID_SPLASH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/ad/adView/SplashAd;->requestAd(Ljava/lang/String;)V

    .line 430
    return-void
.end method

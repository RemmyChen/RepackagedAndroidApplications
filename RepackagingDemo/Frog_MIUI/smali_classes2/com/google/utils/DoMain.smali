.class public Lcom/google/utils/DoMain;
.super Ljava/lang/Object;
.source "DoMain.java"


# static fields
.field public static app_id:Ljava/lang/String;

.field public static banner_ads_id:Ljava/lang/String;

.field public static initial_ads_id:Ljava/lang/String;

.field public static splash_id:Ljava/lang/String;

.field public static umeng_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "1999"

    sput-object v0, Lcom/google/utils/DoMain;->initial_ads_id:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "1998"

    sput-object v0, Lcom/google/utils/DoMain;->banner_ads_id:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "2000"

    sput-object v0, Lcom/google/utils/DoMain;->splash_id:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "182"

    sput-object v0, Lcom/google/utils/DoMain;->app_id:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "58de3d6c734be4386c0003bb"

    sput-object v0, Lcom/google/utils/DoMain;->umeng_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initPara(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 24
    .local v0, "assets":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 26
    .local v3, "open":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v4, "zconfig.zbin"

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 28
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/google/utils/MiUtils;->inputString2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "INITIAL_ADS_ID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/utils/DoMain;->initial_ads_id:Ljava/lang/String;

    .line 30
    const-string/jumbo v4, "BANNER_ADS_ID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/utils/DoMain;->banner_ads_id:Ljava/lang/String;

    .line 31
    const-string/jumbo v4, "APP_ID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/utils/DoMain;->app_id:Ljava/lang/String;

    .line 32
    const-string/jumbo v4, "SPLASH_ID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/utils/DoMain;->splash_id:Ljava/lang/String;

    .line 33
    const-string/jumbo v4, "UMENG_KEY"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/google/utils/DoMain;->umeng_key:Ljava/lang/String;

    .line 35
    sget-object v4, Lcom/google/utils/DoMain;->umeng_key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/google/utils/DoMain;->app_id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 36
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

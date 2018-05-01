.class public Lcom/xiaomi/ad/common/pojo/AdIntent;
.super Ljava/lang/Object;
.source "AdIntent.java"


# static fields
.field public static final KEY_AD_LIST:Ljava/lang/String; = "adInfoList"

.field public static final KEY_AD_Type:Ljava/lang/String; = "adType"

.field public static final TAG:Ljava/lang/String; = "AdIntent"


# instance fields
.field public mAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAdType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/ad/common/pojo/AdType;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdType;->value()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdType:I

    .line 33
    invoke-direct {p0, p2}, Lcom/xiaomi/ad/common/pojo/AdIntent;->parseNativeJson(Lorg/json/JSONObject;)V

    .line 34
    return-void
.end method

.method public static deserialize(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/AdIntent;
    .locals 3

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    :try_start_0
    const-string/jumbo v0, "adType"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    invoke-static {v0}, Lcom/xiaomi/ad/common/pojo/AdType;->valueOf(I)Lcom/xiaomi/ad/common/pojo/AdType;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/xiaomi/ad/common/pojo/AdIntent;->valueOfNative(Lcom/xiaomi/ad/common/pojo/AdType;Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/AdIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string/jumbo v1, "AdIntent"

    const-string/jumbo v2, "fromJson"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_0
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdIntent;

    invoke-direct {v0}, Lcom/xiaomi/ad/common/pojo/AdIntent;-><init>()V

    goto :goto_0
.end method

.method private parseNativeJson(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 38
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/common/pojo/AdIntent;->parserAdList(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string/jumbo v1, "AdIntent"

    const-string/jumbo v2, "parseNativeJson"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/ad/internal/common/b/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private parserAdList(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 45
    const-string/jumbo v0, "adInfoList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdList:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 50
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    iget-object v4, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public static valueOfNative(Lcom/xiaomi/ad/common/pojo/AdType;Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/AdIntent;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/xiaomi/ad/common/pojo/AdIntent;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/ad/common/pojo/AdIntent;-><init>(Lcom/xiaomi/ad/common/pojo/AdType;Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 73
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 77
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 76
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_1
    const-string/jumbo v0, "adType"

    iget v1, p0, Lcom/xiaomi/ad/common/pojo/AdIntent;->mAdType:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v0, "adInfoList"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_1
    return-object v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

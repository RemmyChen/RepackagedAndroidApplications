.class public Lcom/xiaomi/ad/common/api/AdResponse;
.super Ljava/lang/Object;
.source "AdResponse.java"


# static fields
.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_OK:I


# instance fields
.field public mData:Lcom/xiaomi/ad/common/pojo/AdIntent;

.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/ad/common/pojo/AdError;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    .line 28
    invoke-virtual {p1}, Lcom/xiaomi/ad/common/pojo/AdError;->value()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    .line 37
    if-eqz p1, :cond_0

    .line 38
    :try_start_0
    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    .line 39
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/common/pojo/AdIntent;->deserialize(Lorg/json/JSONObject;)Lcom/xiaomi/ad/common/pojo/AdIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mData:Lcom/xiaomi/ad/common/pojo/AdIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static error(Lcom/xiaomi/ad/common/pojo/AdError;)Lcom/xiaomi/ad/common/api/AdResponse;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/xiaomi/ad/common/api/AdResponse;

    invoke-direct {v0, p0}, Lcom/xiaomi/ad/common/api/AdResponse;-><init>(Lcom/xiaomi/ad/common/pojo/AdError;)V

    return-object v0
.end method


# virtual methods
.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :try_start_0
    const-string/jumbo v1, "status"

    iget v2, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    iget-object v1, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mData:Lcom/xiaomi/ad/common/pojo/AdIntent;

    if-eqz v1, :cond_0

    .line 51
    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/xiaomi/ad/common/api/AdResponse;->mData:Lcom/xiaomi/ad/common/pojo/AdIntent;

    invoke-virtual {v2}, Lcom/xiaomi/ad/common/pojo/AdIntent;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0
.end method

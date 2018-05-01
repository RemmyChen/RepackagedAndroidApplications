.class public Lcom/xiaomi/ad/common/api/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field private static final DEFAULT_AD_COUNT:I = 0x1

.field public static final DEFAULT_TIME_OUT:I

.field private static final KEY_AD_COUNT:Ljava/lang/String; = "adCount"

.field private static final KEY_AD_TYPE:Ljava/lang/String; = "adType"

.field private static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final KEY_POSITION_ID:Ljava/lang/String; = "pos"

.field private static final KEY_TIME_OUT:Ljava/lang/String; = "timeout"

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# instance fields
.field private mAdCount:I

.field private mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

.field private mOrientation:I

.field private mPositionId:Ljava/lang/String;

.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget v0, Lcom/xiaomi/ad/internal/common/b/n;->bp:I

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/xiaomi/ad/common/api/AdRequest;->DEFAULT_TIME_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdType;

    iput-object v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdCount:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mOrientation:I

    .line 24
    sget v0, Lcom/xiaomi/ad/common/api/AdRequest;->DEFAULT_TIME_OUT:I

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mTimeout:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/xiaomi/ad/common/pojo/AdType;->AD_UNKNOWN:Lcom/xiaomi/ad/common/pojo/AdType;

    iput-object v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 22
    iput v2, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdCount:I

    .line 23
    iput v1, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mOrientation:I

    .line 24
    sget v0, Lcom/xiaomi/ad/common/api/AdRequest;->DEFAULT_TIME_OUT:I

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mTimeout:I

    .line 75
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    const-string/jumbo v0, "pos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mPositionId:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "adCount"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdCount:I

    .line 78
    const-string/jumbo v0, "adType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/ad/common/pojo/AdType;->valueOf(I)Lcom/xiaomi/ad/common/pojo/AdType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 79
    const-string/jumbo v0, "orientation"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mOrientation:I

    .line 80
    const-string/jumbo v0, "timeout"

    sget v1, Lcom/xiaomi/ad/common/api/AdRequest;->DEFAULT_TIME_OUT:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mTimeout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getAdCount()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdCount:I

    return v0
.end method

.method public getAdType()Lcom/xiaomi/ad/common/pojo/AdType;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mOrientation:I

    return v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mPositionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mTimeout:I

    return v0
.end method

.method public setAdCount(I)Lcom/xiaomi/ad/common/api/AdRequest;
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdCount:I

    .line 53
    return-object p0
.end method

.method public setAdType(Lcom/xiaomi/ad/common/pojo/AdType;)Lcom/xiaomi/ad/common/api/AdRequest;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    .line 36
    return-object p0
.end method

.method public setOrientation(I)Lcom/xiaomi/ad/common/api/AdRequest;
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mOrientation:I

    .line 62
    return-object p0
.end method

.method public setPositionId(Ljava/lang/String;)Lcom/xiaomi/ad/common/api/AdRequest;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mPositionId:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mTimeout:I

    .line 71
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    :try_start_0
    const-string/jumbo v0, "adType"

    iget-object v2, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-virtual {v2}, Lcom/xiaomi/ad/common/pojo/AdType;->value()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v0, "pos"

    iget-object v2, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mPositionId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v0, "adCount"

    iget v2, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v0, "adType"

    iget-object v2, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mAdType:Lcom/xiaomi/ad/common/pojo/AdType;

    invoke-virtual {v2}, Lcom/xiaomi/ad/common/pojo/AdType;->value()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v0, "orientation"

    iget v2, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mOrientation:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v0, "timeout"

    iget v2, p0, Lcom/xiaomi/ad/common/api/AdRequest;->mTimeout:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/xiaomi/ad/common/api/AdRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

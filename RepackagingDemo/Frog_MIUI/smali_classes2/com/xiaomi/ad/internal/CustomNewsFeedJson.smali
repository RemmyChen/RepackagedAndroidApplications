.class public Lcom/xiaomi/ad/internal/CustomNewsFeedJson;
.super Ljava/lang/Object;
.source "CustomNewsFeedJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ad/internal/CustomNewsFeedJson$1;,
        Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    }
.end annotation


# static fields
.field private static final KEY_APP_INSTALL_ID:Ljava/lang/String; = "appInstallId"

.field private static final KEY_BIG_IMAGE_ID:Ljava/lang/String; = "adBigImageId"

.field private static final KEY_DISLIKE_ICON_ID:Ljava/lang/String; = "adDislikeIconId"

.field private static final KEY_GROUP_IMAGE_ID:Ljava/lang/String; = "adGroupImageId"

.field private static final KEY_IS_ENABLE_DISLIKE_ID:Ljava/lang/String; = "adIsEnableDislikeId"

.field private static final KEY_IS_INSTALL_APP_ID:Ljava/lang/String; = "adIsInstallAppId"

.field private static final KEY_LAYOUT_ID:Ljava/lang/String; = "adLayout"

.field private static final KEY_POPULARIZE_ID:Ljava/lang/String; = "popularizeId"

.field private static final KEY_SMALL_IMAGE_ID:Ljava/lang/String; = "adSmallImageId"

.field private static final KEY_SUMMARY_ID:Ljava/lang/String; = "adSummaryId"

.field private static final KEY_TITILE_ID:Ljava/lang/String; = "adTitleId"

.field private static final KEY_TYPE:Ljava/lang/String; = "adType"

.field private static final TAG:Ljava/lang/String; = "CustomNewsFeedJson"

.field private static final TYPE_BIG_PIC:I = 0x0

.field private static final TYPE_GROUP_PIC:I = 0x2

.field private static final TYPE_SMALL_PIC:I = 0x1


# instance fields
.field private mAdType:I

.field private mAppInstallId:I

.field private mBigImageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDislikeIconId:I

.field private mGroupImageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnableDislike:Z

.field private mIsInstallAd:Z

.field private mLayoutId:I

.field private mPopularizeId:I

.field private mSmallImageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryId:I

.field private mTitleId:I


# direct methods
.method private constructor <init>(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mIsEnableDislike:Z

    .line 54
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$000(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mAdType:I

    .line 55
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$100(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mLayoutId:I

    .line 56
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$200(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mTitleId:I

    .line 57
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$300(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mSummaryId:I

    .line 58
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$400(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mGroupImageIds:Ljava/util/List;

    .line 59
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$500(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mBigImageIds:Ljava/util/List;

    .line 60
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$600(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mSmallImageIds:Ljava/util/List;

    .line 61
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$700(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mIsInstallAd:Z

    .line 62
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$800(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mAppInstallId:I

    .line 63
    invoke-static {p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->access$900(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mPopularizeId:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;Lcom/xiaomi/ad/internal/CustomNewsFeedJson$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;-><init>(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)V

    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 70
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mAdType:I

    if-nez v0, :cond_1

    .line 71
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mBigImageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v2, "CustomNewsFeedJson"

    const-string/jumbo v3, "toJsonObject e : "

    invoke-static {v2, v3, v0}, Lcom/xiaomi/ad/internal/common/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 106
    :goto_1
    return-object v0

    .line 75
    :cond_0
    :try_start_1
    const-string/jumbo v0, "adBigImageId"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :goto_2
    const-string/jumbo v0, "adType"

    iget v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mAdType:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v0, "adDislikeIconId"

    iget v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mDislikeIconId:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v0, "adTitleId"

    iget v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mTitleId:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v0, "adSummaryId"

    iget v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mSummaryId:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v0, "adLayout"

    iget v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mLayoutId:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string/jumbo v0, "adIsInstallAppId"

    iget-boolean v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mIsInstallAd:Z

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    const-string/jumbo v0, "appInstallId"

    iget v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mAppInstallId:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v0, "popularizeId"

    iget v3, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mPopularizeId:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v0, "adIsEnableDislikeId"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object v0, v2

    .line 102
    goto :goto_1

    .line 76
    :cond_1
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mAdType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 77
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mGroupImageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_3

    .line 81
    :cond_2
    const-string/jumbo v0, "adGroupImageId"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 82
    :cond_3
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mAdType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 83
    const-string/jumbo v0, "CustomNewsFeedJson"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "2."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mSmallImageIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 85
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;->mSmallImageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_4

    .line 88
    :cond_4
    const-string/jumbo v0, "adSmallImageId"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    .line 90
    :cond_5
    const-string/jumbo v0, "CustomNewsFeedJson"

    const-string/jumbo v2, "unknown type"

    invoke-static {v0, v2}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 91
    goto/16 :goto_1
.end method

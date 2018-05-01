.class public Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
.super Ljava/lang/Object;
.source "CustomNewsFeedJson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/internal/CustomNewsFeedJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAdType:I

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

.field private mInstallId:I

.field private mIsInstallAppAd:Z

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
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mGroupImageIds:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mBigImageIds:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mSmallImageIds:Ljava/util/List;

    .line 124
    iput p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mAdType:I

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mAdType:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mLayoutId:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mTitleId:I

    return v0
.end method

.method static synthetic access$300(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mSummaryId:I

    return v0
.end method

.method static synthetic access$400(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mGroupImageIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mBigImageIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mSmallImageIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mIsInstallAppAd:Z

    return v0
.end method

.method static synthetic access$800(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mInstallId:I

    return v0
.end method

.method static synthetic access$900(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mPopularizeId:I

    return v0
.end method

.method private setDislikeIcon(I)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mDislikeIconId:I

    .line 161
    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaomi/ad/internal/CustomNewsFeedJson;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/ad/internal/CustomNewsFeedJson;-><init>(Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;Lcom/xiaomi/ad/internal/CustomNewsFeedJson$1;)V

    return-object v0
.end method

.method public setBigImageIds(Ljava/util/List;)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;"
        }
    .end annotation

    .prologue
    .line 175
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mAdType:I

    if-eqz v0, :cond_0

    .line 176
    const-string/jumbo v0, "CustomNewsFeedJson"

    const-string/jumbo v1, "adType is not correct, should be TYPE_BIG_PIC!"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-object p0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mBigImageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mBigImageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    const-string/jumbo v0, "CustomNewsFeedJson"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mBigImageIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setGroupImageIds(Ljava/util/List;)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;"
        }
    .end annotation

    .prologue
    .line 165
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mAdType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 166
    const-string/jumbo v0, "CustomNewsFeedJson"

    const-string/jumbo v1, "adType is not correct, should be TYPE_GROUP_PIC!"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-object p0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mGroupImageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mGroupImageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setInstallId(I)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mInstallId:I

    .line 135
    return-object p0
.end method

.method public setIsInstallApp(Z)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mIsInstallAppAd:Z

    .line 130
    return-object p0
.end method

.method public setLayoutId(I)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mLayoutId:I

    .line 140
    return-object p0
.end method

.method public setPopularizeId(I)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mPopularizeId:I

    .line 155
    return-object p0
.end method

.method public setSmallImageIds(Ljava/util/List;)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;"
        }
    .end annotation

    .prologue
    .line 186
    iget v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mAdType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 187
    const-string/jumbo v0, "CustomNewsFeedJson"

    const-string/jumbo v1, "adType is not correct, should be TYPE_SMALL_PIC!"

    invoke-static {v0, v1}, Lcom/xiaomi/ad/internal/common/b/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-object p0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mSmallImageIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mSmallImageIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setSumaryId(I)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mSummaryId:I

    .line 150
    return-object p0
.end method

.method public setTitleId(I)Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/xiaomi/ad/internal/CustomNewsFeedJson$Builder;->mTitleId:I

    .line 145
    return-object p0
.end method

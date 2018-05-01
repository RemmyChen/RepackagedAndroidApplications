.class public Lcom/xiaomi/ad/NativeAdInfoIndex;
.super Ljava/lang/Object;
.source "NativeAdInfoIndex.java"


# instance fields
.field private mAdId:J

.field private mPositionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/xiaomi/ad/NativeAdInfoIndex;->mAdId:J

    .line 13
    iput-object p3, p0, Lcom/xiaomi/ad/NativeAdInfoIndex;->mPositionId:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/xiaomi/ad/NativeAdInfoIndex;->mAdId:J

    return-wide v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/xiaomi/ad/NativeAdInfoIndex;->mPositionId:Ljava/lang/String;

    return-object v0
.end method

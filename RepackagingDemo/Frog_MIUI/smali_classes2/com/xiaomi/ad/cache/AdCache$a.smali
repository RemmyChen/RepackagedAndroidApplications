.class Lcom/xiaomi/ad/cache/AdCache$a;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/cache/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public d:J

.field public mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

.field final synthetic this$0:Lcom/xiaomi/ad/cache/AdCache;


# direct methods
.method public constructor <init>(Lcom/xiaomi/ad/cache/AdCache;Lcom/xiaomi/ad/common/pojo/NativeAdInfo;J)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/xiaomi/ad/cache/AdCache$a;->this$0:Lcom/xiaomi/ad/cache/AdCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/xiaomi/ad/cache/AdCache$a;->mAdInfo:Lcom/xiaomi/ad/common/pojo/NativeAdInfo;

    .line 167
    iput-wide p3, p0, Lcom/xiaomi/ad/cache/AdCache$a;->d:J

    .line 168
    return-void
.end method

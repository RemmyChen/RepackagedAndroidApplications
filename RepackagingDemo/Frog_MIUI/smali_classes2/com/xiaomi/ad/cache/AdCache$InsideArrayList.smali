.class Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;
.super Ljava/util/ArrayList;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/ad/cache/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsideArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private mCapacity:I

.field final synthetic this$0:Lcom/xiaomi/ad/cache/AdCache;


# direct methods
.method public constructor <init>(Lcom/xiaomi/ad/cache/AdCache;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->this$0:Lcom/xiaomi/ad/cache/AdCache;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iput p2, p0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->mCapacity:I

    .line 177
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->mCapacity:I

    if-le v0, v1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "max size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->a(I)V

    .line 188
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 181
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->a(I)V

    .line 182
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/xiaomi/ad/cache/AdCache$InsideArrayList;->mCapacity:I

    return v0
.end method

.method protected removeRange(II)V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 194
    return-void
.end method

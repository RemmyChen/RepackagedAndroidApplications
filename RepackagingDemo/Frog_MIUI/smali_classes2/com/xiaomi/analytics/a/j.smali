.class public Lcom/xiaomi/analytics/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/xiaomi/analytics/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field public dC:I

.field public major:I

.field public minor:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/analytics/a/j;->major:I

    .line 6
    iput v1, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    .line 7
    iput v1, p0, Lcom/xiaomi/analytics/a/j;->dC:I

    .line 10
    iput p1, p0, Lcom/xiaomi/analytics/a/j;->major:I

    .line 11
    iput p2, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    .line 12
    iput p3, p0, Lcom/xiaomi/analytics/a/j;->dC:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v1, p0, Lcom/xiaomi/analytics/a/j;->major:I

    .line 6
    iput v0, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    .line 7
    iput v0, p0, Lcom/xiaomi/analytics/a/j;->dC:I

    .line 17
    :try_start_0
    const-string/jumbo v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/a/j;->major:I

    .line 19
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    .line 20
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/analytics/a/j;->dC:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/analytics/a/j;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/xiaomi/analytics/a/j;->major:I

    iget v2, p1, Lcom/xiaomi/analytics/a/j;->major:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    iget v2, p1, Lcom/xiaomi/analytics/a/j;->minor:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/analytics/a/j;)I
    .locals 2

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 38
    :cond_0
    iget v0, p0, Lcom/xiaomi/analytics/a/j;->major:I

    iget v1, p1, Lcom/xiaomi/analytics/a/j;->major:I

    if-eq v0, v1, :cond_1

    .line 39
    iget v0, p0, Lcom/xiaomi/analytics/a/j;->major:I

    iget v1, p1, Lcom/xiaomi/analytics/a/j;->major:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 41
    :cond_1
    iget v0, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    iget v1, p1, Lcom/xiaomi/analytics/a/j;->minor:I

    if-eq v0, v1, :cond_2

    .line 42
    iget v0, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    iget v1, p1, Lcom/xiaomi/analytics/a/j;->minor:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 44
    :cond_2
    iget v0, p0, Lcom/xiaomi/analytics/a/j;->dC:I

    iget v1, p1, Lcom/xiaomi/analytics/a/j;->dC:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3
    check-cast p1, Lcom/xiaomi/analytics/a/j;

    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/a/j;->b(Lcom/xiaomi/analytics/a/j;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/xiaomi/analytics/a/j;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/analytics/a/j;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/analytics/a/j;->dC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

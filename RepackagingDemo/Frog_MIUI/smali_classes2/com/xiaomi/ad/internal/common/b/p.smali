.class public Lcom/xiaomi/ad/internal/common/b/p;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static bq:I

.field private static br:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static L(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 42
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 43
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/xiaomi/ad/internal/common/b/p;->br:I

    .line 45
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/xiaomi/ad/internal/common/b/p;->bq:I

    .line 46
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 23
    :cond_0
    return v0

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/xiaomi/ad/internal/common/b/p;->bq:I

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/p;->L(Landroid/content/Context;)V

    .line 30
    :cond_0
    sget v0, Lcom/xiaomi/ad/internal/common/b/p;->bq:I

    return v0
.end method

.method public static s(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/xiaomi/ad/internal/common/b/p;->br:I

    if-nez v0, :cond_0

    .line 35
    invoke-static {p0}, Lcom/xiaomi/ad/internal/common/b/p;->L(Landroid/content/Context;)V

    .line 37
    :cond_0
    sget v0, Lcom/xiaomi/ad/internal/common/b/p;->br:I

    return v0
.end method

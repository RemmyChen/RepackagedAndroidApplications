.class public Lcom/xiaomi/ad/internal/common/module/c;
.super Ljava/lang/Object;
.source "Module.java"


# instance fields
.field private Z:Ljava/lang/String;

.field private af:I

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/ClassLoader;

.field private aq:Ljava/lang/Object;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->af:I

    .line 19
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/module/c;->mName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/xiaomi/ad/internal/common/module/c;->Z:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/xiaomi/ad/internal/common/module/c;->ap:Ljava/lang/ClassLoader;

    .line 22
    iput p5, p0, Lcom/xiaomi/ad/internal/common/module/c;->af:I

    .line 23
    iput-object p4, p0, Lcom/xiaomi/ad/internal/common/module/c;->ao:Ljava/lang/String;

    .line 25
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->ap:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->aq:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->ap:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->af:I

    return v0
.end method

.method public k(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->aq:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/internal/common/module/c;->ap:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/c;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "onCreate"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/internal/common/module/c;->aq:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xiaomi/ad/internal/common/module/c;->Z:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/module/c;->ap:Ljava/lang/ClassLoader;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xiaomi/ad/internal/common/module/c;->mName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/xiaomi/ad/internal/common/module/c;->af:I

    .line 55
    return-void
.end method

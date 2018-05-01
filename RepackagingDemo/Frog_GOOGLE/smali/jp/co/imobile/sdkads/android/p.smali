.class abstract Ljp/co/imobile/sdkads/android/p;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->a:Ljava/lang/String;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method abstract a()Ljava/lang/Boolean;
.end method

.method final a(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/p;->a:Ljava/lang/String;

    const-string v3, "AND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    :goto_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/p;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    :goto_3
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/p;->c:Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_2
.end method

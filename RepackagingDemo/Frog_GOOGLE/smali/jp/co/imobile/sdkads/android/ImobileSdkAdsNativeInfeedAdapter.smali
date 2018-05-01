.class public Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/ListAdapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/content/Context;

.field e:Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field f:Ljp/co/imobile/sdkads/android/ay;

.field g:I

.field h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

.field i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljp/co/imobile/sdkads/android/ay;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Landroid/widget/ListAdapter;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spot"    # Ljp/co/imobile/sdkads/android/ay;
    .param p3, "nativeAdParams"    # Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;
    .param p5, "adLayoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljp/co/imobile/sdkads/android/ay;",
            "Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;, "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter<TT;>;"
    .local p4, "originalAdapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a:Landroid/view/LayoutInflater;

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->d:Landroid/content/Context;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    iput p5, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->g:I

    iput-object p4, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->e:Landroid/widget/ListAdapter;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a()V

    return-void
.end method

.method private a(I)I
    .locals 3

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    if-le v1, p1, :cond_0

    :goto_2
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private a()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    move v0, v1

    :goto_0
    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->e:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_1
    sget-object v0, Ljp/co/imobile/sdkads/android/bn;->c:Ljp/co/imobile/sdkads/android/bn;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->a()Ljp/co/imobile/sdkads/android/bn;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->i()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    :cond_4
    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    new-instance v2, Ljp/co/imobile/sdkads/android/ai;

    invoke-direct {v2, p0, v0}, Ljp/co/imobile/sdkads/android/ai;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Ljp/co/imobile/sdkads/android/ay;->b(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    :cond_5
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    move v1, v0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    iget-object v4, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ay;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v2}, Ljp/co/imobile/sdkads/android/ay;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;->setRequestAdCount(I)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->f:Ljp/co/imobile/sdkads/android/ay;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ay;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    new-instance v3, Ljp/co/imobile/sdkads/android/aj;

    invoke-direct {v3, p0}, Ljp/co/imobile/sdkads/android/aj;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;)V

    invoke-static {v0, v1, v2, v3}, Ljp/co/imobile/sdkads/android/ImobileSdkAd;->getNativeAdData(Landroid/app/Activity;Ljava/lang/String;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;, "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter<TT;>;"
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;, "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOriginalDataPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;, "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter<TT;>;"
    invoke-direct {p0, p1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;, "Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter<TT;>;"
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a(I)I

    move-result v1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a:Landroid/view/LayoutInflater;

    iget v3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->g:I

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Ljp/co/imobile/sdkads/android/g;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->d:Landroid/content/Context;

    invoke-direct {v0, p2, v3}, Ljp/co/imobile/sdkads/android/g;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/g;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/g;->a()V

    if-gt v1, v2, :cond_3

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Ljp/co/imobile/sdkads/android/g;->a(Landroid/content/Context;Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    new-instance v0, Ljp/co/imobile/sdkads/android/ah;

    invoke-direct {v0, p0, v1}, Ljp/co/imobile/sdkads/android/ah;-><init>(Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljp/co/imobile/sdkads/android/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a:Landroid/view/LayoutInflater;

    iget v3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->g:I

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Ljp/co/imobile/sdkads/android/g;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->d:Landroid/content/Context;

    invoke-direct {v0, p2, v3}, Ljp/co/imobile/sdkads/android/g;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sub-int v3, v1, v2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->a()Ljp/co/imobile/sdkads/android/i;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:NATVU.getAdInfoRefill(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\');"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljp/co/imobile/sdkads/android/i;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdRequestCount:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " NeedAdCount:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AdStockCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->e:Landroid/widget/ListAdapter;

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->e:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeInfeedAdapter;->a()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

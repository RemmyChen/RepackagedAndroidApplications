.class final Ljp/co/imobile/sdkads/android/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "txtTitle"

    const-string v2, "id"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/g;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "txtDescription"

    const-string v2, "id"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/g;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "txtSponsored"

    const-string v2, "id"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/g;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "imageAd"

    const-string v2, "id"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljp/co/imobile/sdkads/android/g;->d:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Ljp/co/imobile/sdkads/android/g;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method

.method final a(Landroid/content/Context;Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->getSponsored()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/g;->d:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Ljp/co/imobile/sdkads/android/h;

    invoke-direct {v0, p0, p2}, Ljp/co/imobile/sdkads/android/h;-><init>(Ljp/co/imobile/sdkads/android/g;Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;)V

    invoke-virtual {p2, p1, v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdsNativeAdData;->getAdImage(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    :cond_3
    return-void
.end method

.class final Ljp/co/imobile/sdkads/android/v;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/ay;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

.field final synthetic d:Landroid/graphics/Point;

.field final synthetic e:Z

.field final synthetic f:Landroid/view/ViewGroup;

.field final synthetic g:Ljp/co/imobile/sdkads/android/ImobileIconParams;

.field final synthetic h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

.field final synthetic i:Ljava/lang/Boolean;

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:Ljp/co/imobile/sdkads/android/ImobileSdkAd;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/ImobileSdkAd;Ljp/co/imobile/sdkads/android/ay;Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;Ljava/lang/Boolean;ZZ)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/v;->l:Ljp/co/imobile/sdkads/android/ImobileSdkAd;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/v;->a:Ljp/co/imobile/sdkads/android/ay;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/v;->b:Landroid/app/Activity;

    iput-object p4, p0, Ljp/co/imobile/sdkads/android/v;->c:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iput-object p5, p0, Ljp/co/imobile/sdkads/android/v;->d:Landroid/graphics/Point;

    iput-boolean p6, p0, Ljp/co/imobile/sdkads/android/v;->e:Z

    iput-object p7, p0, Ljp/co/imobile/sdkads/android/v;->f:Landroid/view/ViewGroup;

    iput-object p8, p0, Ljp/co/imobile/sdkads/android/v;->g:Ljp/co/imobile/sdkads/android/ImobileIconParams;

    iput-object p9, p0, Ljp/co/imobile/sdkads/android/v;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    iput-object p10, p0, Ljp/co/imobile/sdkads/android/v;->i:Ljava/lang/Boolean;

    iput-boolean p11, p0, Ljp/co/imobile/sdkads/android/v;->j:Z

    iput-boolean p12, p0, Ljp/co/imobile/sdkads/android/v;->k:Z

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdReadyCompleted()V
    .locals 11

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/v;->a:Ljp/co/imobile/sdkads/android/ay;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/v;->b:Landroid/app/Activity;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/v;->c:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v3, p0, Ljp/co/imobile/sdkads/android/v;->d:Landroid/graphics/Point;

    iget-boolean v4, p0, Ljp/co/imobile/sdkads/android/v;->e:Z

    iget-object v5, p0, Ljp/co/imobile/sdkads/android/v;->f:Landroid/view/ViewGroup;

    iget-object v6, p0, Ljp/co/imobile/sdkads/android/v;->g:Ljp/co/imobile/sdkads/android/ImobileIconParams;

    iget-object v7, p0, Ljp/co/imobile/sdkads/android/v;->h:Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;

    iget-object v8, p0, Ljp/co/imobile/sdkads/android/v;->i:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-boolean v9, p0, Ljp/co/imobile/sdkads/android/v;->j:Z

    iget-boolean v10, p0, Ljp/co/imobile/sdkads/android/v;->k:Z

    invoke-virtual/range {v0 .. v10}, Ljp/co/imobile/sdkads/android/ay;->a(Landroid/app/Activity;Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;Landroid/graphics/Point;ZLandroid/view/ViewGroup;Ljp/co/imobile/sdkads/android/ImobileIconParams;Ljp/co/imobile/sdkads/android/ImobileNativeAdParams;ZZZ)V

    return-void
.end method

.class final Ljp/co/imobile/sdkads/android/bq;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/widget/RelativeLayout;

.field final synthetic c:Ljp/co/imobile/sdkads/android/j;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Ljp/co/imobile/sdkads/android/bo;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/bo;Landroid/view/ViewGroup;Landroid/widget/RelativeLayout;Ljp/co/imobile/sdkads/android/j;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/bq;->e:Ljp/co/imobile/sdkads/android/bo;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/bq;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Ljp/co/imobile/sdkads/android/bq;->b:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Ljp/co/imobile/sdkads/android/bq;->c:Ljp/co/imobile/sdkads/android/j;

    iput-object p5, p0, Ljp/co/imobile/sdkads/android/bq;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCloseCompleted()V
    .locals 2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->c:Ljp/co/imobile/sdkads/android/j;

    sget-object v1, Ljp/co/imobile/sdkads/android/n;->f:Ljp/co/imobile/sdkads/android/n;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/n;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->e:Ljp/co/imobile/sdkads/android/bo;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/bo;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->e:Ljp/co/imobile/sdkads/android/bo;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->c:Ljp/co/imobile/sdkads/android/j;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/j;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/bo;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->e:Ljp/co/imobile/sdkads/android/bo;

    const/4 v1, 0x0

    iput-object v1, v0, Ljp/co/imobile/sdkads/android/bo;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->e:Ljp/co/imobile/sdkads/android/bo;

    iget v0, v0, Ljp/co/imobile/sdkads/android/bo;->l:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onAdReadyCompleted()V
    .locals 3

    const/4 v1, -0x2

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->a:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->c:Ljp/co/imobile/sdkads/android/j;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->a()V

    return-void

    :cond_1
    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->c:Ljp/co/imobile/sdkads/android/j;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/j;->e()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->c:Ljp/co/imobile/sdkads/android/j;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/j;->f()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->d:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->d:Landroid/app/Activity;

    invoke-static {v1}, Ljp/co/imobile/sdkads/android/al;->b(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bq;->d:Landroid/app/Activity;

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/bq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final onDismissAdScreen()V
    .locals 1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bq;->e:Ljp/co/imobile/sdkads/android/bo;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/bo;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onDismissAdScreen()V

    return-void
.end method

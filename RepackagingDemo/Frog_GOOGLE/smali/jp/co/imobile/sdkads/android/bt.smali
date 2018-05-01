.class final Ljp/co/imobile/sdkads/android/bt;
.super Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/j;

.field final synthetic b:I

.field final synthetic c:Ljp/co/imobile/sdkads/android/br;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/br;Ljp/co/imobile/sdkads/android/j;I)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/bt;->a:Ljp/co/imobile/sdkads/android/j;

    iput p3, p0, Ljp/co/imobile/sdkads/android/bt;->b:I

    invoke-direct {p0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCloseCompleted()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->a:Ljp/co/imobile/sdkads/android/j;

    sget-object v1, Ljp/co/imobile/sdkads/android/n;->f:Ljp/co/imobile/sdkads/android/n;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/j;->a(Ljp/co/imobile/sdkads/android/n;)V

    invoke-static {}, Ljp/co/imobile/sdkads/android/al;->b()Ljp/co/imobile/sdkads/android/al;

    move-result-object v0

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/al;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AMAZON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Ljp/co/imobile/sdkads/android/bt;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    iget-object v0, v0, Ljp/co/imobile/sdkads/android/br;->A:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bt;->a:Ljp/co/imobile/sdkads/android/j;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/j;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/br;->c(Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->a:Ljp/co/imobile/sdkads/android/j;

    iput-object v3, v0, Ljp/co/imobile/sdkads/android/j;->n:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x3abd35f6

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {v3}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->b(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    iput-object v3, v0, Ljp/co/imobile/sdkads/android/br;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    goto :goto_0

    :cond_2
    const-string v0, "Ad Dialog close failed."

    const-string v1, ""

    invoke-static {v0, v1}, Ljp/co/imobile/sdkads/android/aw;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onAdReadyCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/aw;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->c:Ljp/co/imobile/sdkads/android/br;

    invoke-static {v0}, Ljp/co/imobile/sdkads/android/br;->a(Ljp/co/imobile/sdkads/android/br;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Ljp/co/imobile/sdkads/android/bt;->a:Ljp/co/imobile/sdkads/android/j;

    invoke-virtual {v0}, Ljp/co/imobile/sdkads/android/j;->a()V

    return-void
.end method

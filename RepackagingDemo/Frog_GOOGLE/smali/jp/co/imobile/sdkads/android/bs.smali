.class final Ljp/co/imobile/sdkads/android/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/br;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/br;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/bs;->a:Ljp/co/imobile/sdkads/android/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p2, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bs;->a:Ljp/co/imobile/sdkads/android/br;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/br;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/co/imobile/sdkads/android/bs;->a:Ljp/co/imobile/sdkads/android/br;

    iget-object v1, v1, Ljp/co/imobile/sdkads/android/br;->z:Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;

    invoke-virtual {v1}, Ljp/co/imobile/sdkads/android/ImobileSdkAdListener;->onAdCloseCompleted()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.class final Ljp/co/imobile/sdkads/android/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljp/co/imobile/sdkads/android/i;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/co/imobile/sdkads/android/i;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljp/co/imobile/sdkads/android/ar;->a:Ljp/co/imobile/sdkads/android/i;

    iput-object p2, p0, Ljp/co/imobile/sdkads/android/ar;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    iget-object v0, p0, Ljp/co/imobile/sdkads/android/ar;->a:Ljp/co/imobile/sdkads/android/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/imobile/sdkads/android/ar;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "();"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp/co/imobile/sdkads/android/i;->b(Ljava/lang/String;)V

    return-void
.end method

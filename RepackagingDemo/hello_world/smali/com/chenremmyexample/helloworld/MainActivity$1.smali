# PATCH START

.class Lcom/chenremmyexample/helloworld/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"    

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chenremmyexample/helloworld/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# instance fields
.field final synthetic this$0:Lcom/chenremmyexample/helloworld/MainActivity;


# direct methods
.method constructor <init>(Lcom/chenremmyexample/helloworld/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/chenremmyexample/helloworld/MainActivity;

    .prologue
    iput-object p1, p0, Lcom/chenremmyexample/helloworld/MainActivity$1;->this$0:Lcom/chenremmyexample/helloworld/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/chenremmyexample/helloworld/MainActivity$1;->this$0:Lcom/chenremmyexample/helloworld/MainActivity;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Lcom/chenremmyexample/helloworld/MainActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/chenremmyexample/helloworld/MainActivity$1;->this$0:Lcom/chenremmyexample/helloworld/MainActivity;

    invoke-virtual {v0}, Lcom/chenremmyexample/helloworld/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/chenremmyexample/helloworld/MainActivity$1;->this$0:Lcom/chenremmyexample/helloworld/MainActivity;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Lcom/chenremmyexample/helloworld/MainActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/chenremmyexample/helloworld/MainActivity$1;->this$0:Lcom/chenremmyexample/helloworld/MainActivity;

    invoke-virtual {v0}, Lcom/chenremmyexample/helloworld/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Gotta love ads!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

# PATCH END



.class public Lcom/chenremmyexample/helloworld/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4 # ORIGINALLY 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 10


    # PATCH START - handler

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/chenremmyexample/helloworld/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/chenremmyexample/helloworld/MainActivity$1;-><init>(Lcom/chenremmyexample/helloworld/MainActivity;)V

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    # PATCH END
    
    .line 12
    return-void
.end method


.class public Lcom/google/littleDog/MulDexApp;
.super Landroid/app/Application;
.source "MulDexApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 16
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    return-void
.end method

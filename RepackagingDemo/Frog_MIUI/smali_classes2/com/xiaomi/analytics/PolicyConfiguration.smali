.class public Lcom/xiaomi/analytics/PolicyConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;
    }
.end annotation


# static fields
.field public static final DEFAULT_PRIVACY_KEY:Ljava/lang/String; = "privacy_policy"

.field public static final DEFAULT_PRIVACY_VALUE_NO:Ljava/lang/String; = "privacy_no"

.field public static final DEFAULT_PRIVACY_VALUE_USER:Ljava/lang/String; = "privacy_user"


# instance fields
.field private co:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->co:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    .line 13
    return-void
.end method

.method private b(Lcom/xiaomi/analytics/a/c/a;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->co:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->co:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    sget-object v1, Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;->NO:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    if-ne v0, v1, :cond_1

    .line 32
    const-string/jumbo v0, "privacy_policy"

    const-string/jumbo v1, "privacy_no"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/analytics/a/c/a;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string/jumbo v0, "privacy_policy"

    const-string/jumbo v1, "privacy_user"

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/analytics/a/c/a;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/xiaomi/analytics/a/c/a;)V
    .locals 0

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/PolicyConfiguration;->b(Lcom/xiaomi/analytics/a/c/a;)V

    .line 27
    :cond_0
    return-void
.end method

.method public setPrivacy(Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;)Lcom/xiaomi/analytics/PolicyConfiguration;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/xiaomi/analytics/PolicyConfiguration;->co:Lcom/xiaomi/analytics/PolicyConfiguration$Privacy;

    .line 20
    return-object p0
.end method

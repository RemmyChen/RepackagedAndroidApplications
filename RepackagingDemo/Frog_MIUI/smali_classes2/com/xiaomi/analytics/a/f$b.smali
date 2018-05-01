.class Lcom/xiaomi/analytics/a/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic do:Lcom/xiaomi/analytics/a/f;


# direct methods
.method private constructor <init>(Lcom/xiaomi/analytics/a/f;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/xiaomi/analytics/a/f$b;->do:Lcom/xiaomi/analytics/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/analytics/a/f;Lcom/xiaomi/analytics/a/g;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/a/f$b;-><init>(Lcom/xiaomi/analytics/a/f;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

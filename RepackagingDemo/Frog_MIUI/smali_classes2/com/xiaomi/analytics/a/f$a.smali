.class Lcom/xiaomi/analytics/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic do:Lcom/xiaomi/analytics/a/f;


# direct methods
.method private constructor <init>(Lcom/xiaomi/analytics/a/f;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/xiaomi/analytics/a/f$a;->do:Lcom/xiaomi/analytics/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/analytics/a/f;Lcom/xiaomi/analytics/a/g;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/a/f$a;-><init>(Lcom/xiaomi/analytics/a/f;)V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

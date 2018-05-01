.class Lcom/xiaomi/analytics/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic do:Lcom/xiaomi/analytics/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/analytics/a/f;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/xiaomi/analytics/a/i;->do:Lcom/xiaomi/analytics/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 271
    :try_start_0
    const-string/jumbo v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/xiaomi/analytics/a/f$b;

    iget-object v5, p0, Lcom/xiaomi/analytics/a/i;->do:Lcom/xiaomi/analytics/a/f;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/analytics/a/f$b;-><init>(Lcom/xiaomi/analytics/a/f;Lcom/xiaomi/analytics/a/g;)V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 273
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 274
    new-instance v0, Lcom/xiaomi/analytics/a/f$a;

    iget-object v1, p0, Lcom/xiaomi/analytics/a/i;->do:Lcom/xiaomi/analytics/a/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/analytics/a/f$a;-><init>(Lcom/xiaomi/analytics/a/f;Lcom/xiaomi/analytics/a/g;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

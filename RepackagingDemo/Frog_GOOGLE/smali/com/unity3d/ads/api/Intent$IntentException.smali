.class Lcom/unity3d/ads/api/Intent$IntentException;
.super Ljava/lang/Exception;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/api/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentException"
.end annotation


# instance fields
.field private error:Lcom/unity3d/ads/api/Intent$IntentError;

.field private field:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/api/Intent$IntentError;Ljava/lang/Object;)V
    .locals 0
    .param p1, "error"    # Lcom/unity3d/ads/api/Intent$IntentError;
    .param p2, "field"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/unity3d/ads/api/Intent$IntentException;->error:Lcom/unity3d/ads/api/Intent$IntentError;

    .line 252
    iput-object p2, p0, Lcom/unity3d/ads/api/Intent$IntentException;->field:Ljava/lang/Object;

    .line 253
    return-void
.end method


# virtual methods
.method public getError()Lcom/unity3d/ads/api/Intent$IntentError;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/unity3d/ads/api/Intent$IntentException;->error:Lcom/unity3d/ads/api/Intent$IntentError;

    return-object v0
.end method

.method public getField()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/unity3d/ads/api/Intent$IntentException;->field:Ljava/lang/Object;

    return-object v0
.end method
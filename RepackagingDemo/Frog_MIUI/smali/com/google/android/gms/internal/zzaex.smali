.class public final Lcom/google/android/gms/internal/zzaex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzafd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Ljava/util/Set;)Lcom/google/android/gms/internal/zzakv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzakv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakl;->zzi(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v0

    return-object v0
.end method

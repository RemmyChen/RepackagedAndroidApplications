.class final Lcom/google/android/gms/internal/zzalx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzdgk:Lcom/google/android/gms/internal/zzalr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalx;->zzdgk:Lcom/google/android/gms/internal/zzalr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalx;->zzdgk:Lcom/google/android/gms/internal/zzalr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalr;->zza(Lcom/google/android/gms/internal/zzalr;)Lcom/google/android/gms/internal/zzama;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalx;->zzdgk:Lcom/google/android/gms/internal/zzalr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalr;->zza(Lcom/google/android/gms/internal/zzalr;)Lcom/google/android/gms/internal/zzama;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzama;->onPaused()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalx;->zzdgk:Lcom/google/android/gms/internal/zzalr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalr;->zza(Lcom/google/android/gms/internal/zzalr;)Lcom/google/android/gms/internal/zzama;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzama;->zzrr()V

    :cond_0
    return-void
.end method

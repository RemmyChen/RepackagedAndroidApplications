.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field private final zzbxy:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

.field private final zzbxz:Z

.field private final zzbya:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzbxz:Z

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzbxy:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzbya:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzbya:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzbxz:Z

    return v0
.end method

.method public final zzkr()Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->zzbxy:Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    return-object v0
.end method

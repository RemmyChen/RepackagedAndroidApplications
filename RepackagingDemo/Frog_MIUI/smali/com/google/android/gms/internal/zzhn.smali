.class final Lcom/google/android/gms/internal/zzhn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzazs:Lcom/google/android/gms/internal/zzhm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhn;->zzazs:Lcom/google/android/gms/internal/zzhm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhn;->zzazs:Lcom/google/android/gms/internal/zzhm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhm;->zzazn:Lcom/google/android/gms/internal/zzhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhn;->zzazs:Lcom/google/android/gms/internal/zzhm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhm;->zzazp:Lcom/google/android/gms/internal/zzhe;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhn;->zzazs:Lcom/google/android/gms/internal/zzhm;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzhm;->zzazq:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhn;->zzazs:Lcom/google/android/gms/internal/zzhm;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzhm;->zzazr:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/zzhk;->zza(Lcom/google/android/gms/internal/zzhe;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

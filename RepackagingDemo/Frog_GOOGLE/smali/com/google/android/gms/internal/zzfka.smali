.class public final Lcom/google/android/gms/internal/zzfka;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm",
        "<",
        "Lcom/google/android/gms/internal/zzfka;",
        ">;"
    }
.end annotation


# instance fields
.field private zzpor:[B

.field private zzpos:[B

.field private zzpot:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpor:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpos:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpot:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpfd:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->zzcvt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjj;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpor:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpos:[B

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfjj;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpot:[B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfjk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpor:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfka;->zzpor:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzc(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpos:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfka;->zzpos:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzc(I[B)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfka;->zzpot:[B

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfka;->zzpot:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfjk;->zzc(I[B)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzfjm;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    return-void
.end method

.method protected final zzq()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzfjm;->zzq()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfka;->zzpor:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfka;->zzpor:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfka;->zzpos:[B

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfka;->zzpos:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfka;->zzpot:[B

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfka;->zzpot:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfjk;->zzd(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

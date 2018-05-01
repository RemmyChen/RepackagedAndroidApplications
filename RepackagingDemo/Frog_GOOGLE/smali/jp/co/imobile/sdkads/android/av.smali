.class final Ljp/co/imobile/sdkads/android/av;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Boolean;

.field static final b:Ljava/lang/Boolean;

.field static final c:Ljava/lang/Boolean;

.field static final d:Ljp/co/imobile/sdkads/android/AdOrientation;

.field static final e:Ljava/lang/Long;

.field static final f:Ljava/lang/Long;

.field static final g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljp/co/imobile/sdkads/android/av;->a:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljp/co/imobile/sdkads/android/av;->b:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljp/co/imobile/sdkads/android/av;->c:Ljava/lang/Boolean;

    sget-object v0, Ljp/co/imobile/sdkads/android/AdOrientation;->AUTO:Ljp/co/imobile/sdkads/android/AdOrientation;

    sput-object v0, Ljp/co/imobile/sdkads/android/av;->d:Ljp/co/imobile/sdkads/android/AdOrientation;

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ljp/co/imobile/sdkads/android/av;->e:Ljava/lang/Long;

    const-wide/32 v0, 0x493e0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ljp/co/imobile/sdkads/android/av;->f:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljp/co/imobile/sdkads/android/av;->g:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

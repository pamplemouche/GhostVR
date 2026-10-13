.class public final LqU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final w:Landroid/os/StrictMode$ThreadPolicy;

.field public final x:Landroid/os/StrictMode$VmPolicy;


# direct methods
.method public constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LqU;->w:Landroid/os/StrictMode$ThreadPolicy;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LqU;->x:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method public static a()LqU;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    new-instance v1, LqU;

    invoke-direct {v1, v0}, LqU;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public static e()LqU;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    new-instance v1, LqU;

    invoke-direct {v1, v0}, LqU;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, LqU;->w:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3
    :cond_0
    iget-object v0, p0, LqU;->x:Landroid/os/StrictMode$VmPolicy;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_1
    return-void
.end method

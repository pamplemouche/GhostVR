.class public Lcom/facebook/crudolib/appstrictmode/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# static fields
.field private static volatile sEnabled:Z = false


# instance fields
.field private volatile allocationSite:Ljava/lang/Throwable;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V
    .locals 1
    .param p0    # Lcom/facebook/crudolib/appstrictmode/CloseGuard;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method public static getEnabled()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->sEnabled:Z

    return v0
.end method

.method public static open(Lcom/facebook/crudolib/appstrictmode/CloseGuard;Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    .locals 2
    .param p0    # Lcom/facebook/crudolib/appstrictmode/CloseGuard;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_3

    .line 71
    sget-boolean v0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->sEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 75
    new-instance p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    invoke-direct {p0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;-><init>()V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    .line 81
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit termination method \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not called"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    return-object p0

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    const-string v0, "closeGuard was never released before calling open."

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "closer == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static open(Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-static {v0, p0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->open(Lcom/facebook/crudolib/appstrictmode/CloseGuard;Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    move-result-object p0

    return-object p0
.end method

.method static setEnabled(Z)V
    .locals 0

    .line 49
    sput-boolean p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->sEnabled:Z

    return-void
.end method

.method public static warnIfOpen(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V
    .locals 2
    .param p0    # Lcom/facebook/crudolib/appstrictmode/CloseGuard;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 114
    iget-object p0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    const-string v1, "A resource was acquired and never released."

    invoke-static {v0, v1, p0}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;->reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {p0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->warnIfOpen(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

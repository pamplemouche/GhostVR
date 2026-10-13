.class public Lcom/facebook/crudolib/appstrictmode/CloseGuard;
.super Ljava/lang/Object;
.source "CloseGuard.java"


# static fields
.field private static volatile sEnabled:Z


# instance fields
.field private volatile allocationSite:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->sEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V
    .locals 1
    .param p0, "closeGuard"    # Lcom/facebook/crudolib/appstrictmode/CloseGuard;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    if-eqz p0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    .line 101
    :cond_0
    return-void
.end method

.method public static getEnabled()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->sEnabled:Z

    return v0
.end method

.method public static open(Lcom/facebook/crudolib/appstrictmode/CloseGuard;Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    .locals 4
    .param p0, "closeGuard"    # Lcom/facebook/crudolib/appstrictmode/CloseGuard;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "closer"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "closer == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    sget-boolean v1, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->sEnabled:Z

    if-nez v1, :cond_1

    .line 72
    const/4 p0, 0x0

    .line 83
    .end local p0    # "closeGuard":Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    :goto_0
    return-object p0

    .line 74
    .restart local p0    # "closeGuard":Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    :cond_1
    if-nez p0, :cond_3

    .line 75
    new-instance p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    .end local p0    # "closeGuard":Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    invoke-direct {p0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;-><init>()V

    .line 81
    .restart local p0    # "closeGuard":Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Explicit termination method \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    goto :goto_0

    .line 76
    .end local v0    # "message":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "closeGuard was never released before calling open."

    iget-object v3, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static open(Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;
    .locals 1
    .param p0, "closer"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->open(Lcom/facebook/crudolib/appstrictmode/CloseGuard;Ljava/lang/String;)Lcom/facebook/crudolib/appstrictmode/CloseGuard;

    move-result-object v0

    return-object v0
.end method

.method static setEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 49
    sput-boolean p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->sEnabled:Z

    .line 50
    return-void
.end method

.method public static warnIfOpen(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V
    .locals 3
    .param p0, "closeGuard"    # Lcom/facebook/crudolib/appstrictmode/CloseGuard;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x1

    const-string v1, "A resource was acquired and never released."

    iget-object v2, p0, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->allocationSite:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/facebook/crudolib/appstrictmode/AppStrictMode;->reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->warnIfOpen(Lcom/facebook/crudolib/appstrictmode/CloseGuard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

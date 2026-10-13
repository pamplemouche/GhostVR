.class public Lcom/facebook/acra/util/NoSync;
.super Ljava/lang/Object;
.source "NoSync.java"


# static fields
.field private static sSyncDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/acra/util/NoSync;->sSyncDisabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFSSync(Z)V
    .locals 1
    .param p0, "useFastHooks"    # Z

    .prologue
    .line 15
    sget-boolean v0, Lcom/facebook/acra/util/NoSync;->sSyncDisabled:Z

    if-eqz v0, :cond_0

    .line 20
    :goto_0
    return-void

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, p0}, Lcom/facebook/acra/util/NoSync;->disableFSSync(IZ)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/acra/util/NoSync;->sSyncDisabled:Z

    goto :goto_0
.end method

.method private static native disableFSSync(IZ)Z
.end method

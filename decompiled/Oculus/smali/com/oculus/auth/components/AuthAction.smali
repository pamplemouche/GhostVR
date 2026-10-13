.class public final Lcom/oculus/auth/components/AuthAction;
.super Ljava/lang/Object;
.source "AuthAction.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mCallingPackage:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mStartTime:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/auth/components/AuthAction;->mName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/oculus/auth/components/AuthAction;->mCallingPackage:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/oculus/auth/components/AuthAction;->mStartTime:J

    .line 26
    return-void
.end method

.method private static extractCallingPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private static extractName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Intent;Lcom/oculus/time/Clock;)Lcom/oculus/auth/components/AuthAction;
    .locals 6

    .prologue
    .line 29
    new-instance v0, Lcom/oculus/auth/components/AuthAction;

    invoke-static {p0}, Lcom/oculus/auth/components/AuthAction;->extractName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/oculus/auth/components/AuthAction;->extractCallingPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oculus/auth/components/AuthAction;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method static unknown()Lcom/oculus/auth/components/AuthAction;
    .locals 6

    .prologue
    .line 64
    new-instance v0, Lcom/oculus/auth/components/AuthAction;

    const-string/jumbo v1, "unknown"

    const-string/jumbo v2, "unknown"

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oculus/auth/components/AuthAction;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/auth/components/AuthAction;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/auth/components/AuthAction;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/oculus/auth/components/AuthAction;->mStartTime:J

    return-wide v0
.end method

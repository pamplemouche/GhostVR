.class Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;
.super Ljava/lang/Object;
.source "PolicyEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer$ReportingRuntimeException;
    }
.end annotation


# static fields
.field private static sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->LAX:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    sput-object v0, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportViolation(ILjava/lang/String;)V
    .locals 2
    .param p0, "violationType"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    iget v0, v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->mMask:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer$ReportingRuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer$ReportingRuntimeException;-><init>(Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer$1;)V

    invoke-static {p0, p1, v0}, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "violationType"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    iget v0, v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->mMask:I

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    sget-object v0, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    iget v0, v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->mMask:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "AppStrictMode"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAppPolicy(Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;)V
    .locals 1
    .param p0, "policy"    # Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    .prologue
    .line 13
    sput-object p0, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    .line 15
    sget-object v0, Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;->sAppPolicy:Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;

    iget v0, v0, Lcom/facebook/crudolib/appstrictmode/AppStrictMode$AppPolicy;->mMask:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/crudolib/appstrictmode/CloseGuard;->setEnabled(Z)V

    .line 16
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

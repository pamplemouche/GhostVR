.class Lcom/facebook/crudolib/appstrictmode/PolicyEnforcer;
.super Ljava/lang/Object;
.source "PolicyEnforcer.java"


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

.method public static reportViolation(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/Throwable;
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

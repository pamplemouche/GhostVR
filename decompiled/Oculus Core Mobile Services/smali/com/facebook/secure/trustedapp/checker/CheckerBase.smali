.class public abstract Lcom/facebook/secure/trustedapp/checker/CheckerBase;
.super Ljava/lang/Object;
.source "CheckerBase.java"

# interfaces
.implements Lcom/facebook/secure/trustedapp/checker/CheckerInternal;


# static fields
.field public static final ALLOW_IF_DEBUG_BUILD_CALLING_DEBUG_BUILD:Lcom/facebook/secure/trustedapp/checker/Checker;

.field public static final ALWAYS_ALLOW:Lcom/facebook/secure/trustedapp/checker/Checker;

.field public static final ALWAYS_DENY:Lcom/facebook/secure/trustedapp/checker/Checker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase$1;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/checker/CheckerBase$1;-><init>()V

    sput-object v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase;->ALWAYS_ALLOW:Lcom/facebook/secure/trustedapp/checker/Checker;

    .line 33
    new-instance v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase$2;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/checker/CheckerBase$2;-><init>()V

    sput-object v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase;->ALWAYS_DENY:Lcom/facebook/secure/trustedapp/checker/Checker;

    .line 42
    new-instance v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase$3;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/checker/CheckerBase$3;-><init>()V

    sput-object v0, Lcom/facebook/secure/trustedapp/checker/CheckerBase;->ALLOW_IF_DEBUG_BUILD_CALLING_DEBUG_BUILD:Lcom/facebook/secure/trustedapp/checker/Checker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/facebook/secure/trustedapp/checker/AndChecker;
.super Lcom/facebook/secure/trustedapp/checker/CheckerBase;
.source "AndChecker.java"


# instance fields
.field private mLeftChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

.field private mRightChecker:Lcom/facebook/secure/trustedapp/checker/Checker;


# direct methods
.method constructor <init>(Lcom/facebook/secure/trustedapp/checker/Checker;Lcom/facebook/secure/trustedapp/checker/Checker;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/secure/trustedapp/checker/CheckerBase;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/facebook/secure/trustedapp/checker/AndChecker;->mLeftChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    .line 20
    iput-object p2, p0, Lcom/facebook/secure/trustedapp/checker/AndChecker;->mRightChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    .line 21
    return-void
.end method


# virtual methods
.method public shouldAllowIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z
    .locals 1
    .param p4    # Lcom/facebook/secure/logger/Reporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/checker/AndChecker;->mLeftChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/secure/trustedapp/checker/Checker;->shouldAllowIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/secure/trustedapp/checker/AndChecker;->mRightChecker:Lcom/facebook/secure/trustedapp/checker/Checker;

    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/secure/trustedapp/checker/Checker;->shouldAllowIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

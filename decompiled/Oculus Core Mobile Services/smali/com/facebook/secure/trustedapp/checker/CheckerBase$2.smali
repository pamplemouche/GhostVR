.class final Lcom/facebook/secure/trustedapp/checker/CheckerBase$2;
.super Lcom/facebook/secure/trustedapp/checker/CheckerBase;
.source "CheckerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/trustedapp/checker/CheckerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/secure/trustedapp/checker/CheckerBase;-><init>()V

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
    .line 38
    const/4 v0, 0x0

    return v0
.end method

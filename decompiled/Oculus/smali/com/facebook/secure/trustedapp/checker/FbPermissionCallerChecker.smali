.class public Lcom/facebook/secure/trustedapp/checker/FbPermissionCallerChecker;
.super Lcom/facebook/secure/trustedapp/checker/CheckerBase;
.source "FbPermissionCallerChecker.java"


# instance fields
.field private mFbPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/secure/trustedapp/checker/CheckerBase;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/secure/trustedapp/checker/FbPermissionCallerChecker;->mFbPermission:Ljava/lang/String;

    .line 16
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
    .line 21
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/checker/FbPermissionCallerChecker;->mFbPermission:Ljava/lang/String;

    invoke-static {v0, p1, p3, p4}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkCallerHasFbPermissions(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z

    move-result v0

    return v0
.end method

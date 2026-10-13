.class public abstract Lcom/facebook/secure/service/FbPermissionsService;
.super Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;
.source "FbPermissionsService.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;-><init>()V

    .line 12
    new-instance v0, Lcom/facebook/secure/trustedapp/checker/FbPermissionCallerChecker;

    invoke-virtual {p0}, Lcom/facebook/secure/service/FbPermissionsService;->getFbPermission()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/checker/FbPermissionCallerChecker;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/secure/service/FbPermissionsService;->addAdditionalPermissionChecker(Lcom/facebook/secure/trustedapp/checker/Checker;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected abstract getFbPermission()Ljava/lang/String;
.end method

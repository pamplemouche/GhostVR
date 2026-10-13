.class public Lcom/facebook/secure/intent/FamilyIntentScope;
.super Lcom/facebook/secure/intent/TargetedAppsIntentScope;
.source "FamilyIntentScope.java"


# direct methods
.method public constructor <init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 21
    invoke-static {}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createAllFBFamilyTrustedApp()Lcom/facebook/secure/trustedapp/TrustedApp;

    move-result-object v3

    const-string v4, "FamilyIntentScope"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, p3

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/facebook/secure/intent/TargetedAppsIntentScope;-><init>(Lcom/facebook/secure/intent/LaunchEnforcement;Lcom/facebook/secure/logger/Reporter;Lcom/facebook/secure/trustedapp/TrustedApp;Ljava/lang/String;ZZZ)V

    .line 26
    return-void
.end method

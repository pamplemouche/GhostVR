.class Lcom/oculus/vrshell/panel/PanelVerifier$TrustedFirstPartyCertVerifier;
.super Lcom/oculus/vrshell/panel/SigCertVerifier;
.source "PanelVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panel/PanelVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustedFirstPartyCertVerifier"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "trustAppsBranchDev"    # Z

    .prologue
    .line 70
    invoke-static {p3}, Lcom/oculus/vrshell/panel/VerifierConstants;->getFirstPartyOculusStorePackages(Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/vrshell/panel/SigCertVerifier;-><init>(Ljava/util/Map;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 71
    return-void
.end method

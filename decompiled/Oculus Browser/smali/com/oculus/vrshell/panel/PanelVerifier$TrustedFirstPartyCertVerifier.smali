.class public Lcom/oculus/vrshell/panel/PanelVerifier$TrustedFirstPartyCertVerifier;
.super Lcom/oculus/vrshell/panel/SigCertVerifier;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/oculus/vrshell/panel/VerifierConstants;->getFirstPartyOculusStorePackages(Z)Ljava/util/Map;

    move-result-object p3

    .line 2
    invoke-direct {p0, p3, p1, p2}, Lcom/oculus/vrshell/panel/SigCertVerifier;-><init>(Ljava/util/Map;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-void
.end method

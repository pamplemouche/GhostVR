.class Lcom/oculus/vrshell/panelservice/PanelVerifier$TrustedFirstPartyCertVerifier;
.super Lcom/oculus/vrshell/panelservice/SigCertVerifier;
.source "PanelVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panelservice/PanelVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustedFirstPartyCertVerifier"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Z)V
    .locals 0

    .line 48
    invoke-static {p3}, Lcom/oculus/vrshell/panelservice/VerifierConstants;->getFirstPartyOculusStorePackages(Z)Ljava/util/Map;

    move-result-object p3

    .line 47
    invoke-direct {p0, p3, p1, p2}, Lcom/oculus/vrshell/panelservice/SigCertVerifier;-><init>(Ljava/util/Map;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-void
.end method

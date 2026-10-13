.class final Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig$1;
.super Ljava/lang/Object;
.source "EnterpriseConfig.java"

# interfaces
.implements Lcom/oculus/os/enterprise/Mode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;->createDebugConfiguration()Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplications()[Ljava/lang/String;
    .locals 2

    const-string v0, "com.oculus.mediagallery"

    const-string v1, "com.oculus.browser/com.oculus.browser.PanelService"

    .line 41
    filled-new-array {v1, v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuiCapabilities()[Lcom/oculus/os/enterprise/AUICapability;
    .locals 3

    const/4 v0, 0x7

    .line 57
    new-array v0, v0, [Lcom/oculus/os/enterprise/AUICapability;

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->EXPLORE:Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->NOTIFICATIONS:Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->NUX:Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->SEE_ALL_SETTINGS:Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->WIFI:Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->SHARE:Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/os/enterprise/AUICapability;->CASTING:Lcom/oculus/os/enterprise/AUICapability;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getDefaultApplication()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    const-string v0, "Admin"

    return-object v0
.end method

.method public getHomeButtonBehaviour()Lcom/oculus/os/enterprise/HomeButtonBehaviour;
    .locals 1

    .line 70
    sget-object v0, Lcom/oculus/os/enterprise/HomeButtonBehaviour;->UNRESTRICTED:Lcom/oculus/os/enterprise/HomeButtonBehaviour;

    return-object v0
.end method

.method public getPin()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "1234"

    .line 75
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

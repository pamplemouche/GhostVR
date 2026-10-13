.class Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;
.super Ljava/lang/Object;
.source "EnterpriseConfig.java"


# instance fields
.field final enterpriseModes:[Lcom/oculus/os/enterprise/Mode;


# direct methods
.method private constructor <init>([Lcom/oculus/os/enterprise/Mode;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;->enterpriseModes:[Lcom/oculus/os/enterprise/Mode;

    return-void
.end method

.method private static createDebugConfiguration()Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 31
    new-instance v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oculus/os/enterprise/Mode;

    new-instance v2, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig$1;

    invoke-direct {v2}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig$1;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig$2;

    invoke-direct {v2}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig$2;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;-><init>([Lcom/oculus/os/enterprise/Mode;)V

    return-object v0
.end method

.method static readEnterprise(Landroid/content/Context;)Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;
    .locals 1

    .line 21
    invoke-static {p0}, Lcom/oculus/os/enterprise/EnterpriseServer;->isInEnterpriseMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

    invoke-static {p0}, Lcom/oculus/os/enterprise/EnterpriseServer;->getConfiguration(Landroid/content/Context;)Lcom/oculus/os/enterprise/Configuration;

    move-result-object p0

    invoke-interface {p0}, Lcom/oculus/os/enterprise/Configuration;->getModes()[Lcom/oculus/os/enterprise/Mode;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;-><init>([Lcom/oculus/os/enterprise/Mode;)V

    return-object v0

    .line 24
    :cond_0
    invoke-static {}, Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;->createDebugConfiguration()Lcom/oculus/panelapp/enterprisekeypad/EnterpriseConfig;

    move-result-object p0

    return-object p0
.end method

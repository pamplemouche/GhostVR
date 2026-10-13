.class final Lcom/oculus/panelapp/managedlauncher/Config$3;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Lcom/oculus/os/enterprise/Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/managedlauncher/Config;->createDebugConfig()Lcom/oculus/os/enterprise/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$modes:[Lcom/oculus/os/enterprise/Mode;


# direct methods
.method constructor <init>([Lcom/oculus/os/enterprise/Mode;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/oculus/panelapp/managedlauncher/Config$3;->val$modes:[Lcom/oculus/os/enterprise/Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getControllerMode()Lcom/oculus/os/enterprise/ControllerMode;
    .locals 1

    .line 173
    sget-object v0, Lcom/oculus/os/enterprise/ControllerMode;->GAZE_MODE_DISABLED:Lcom/oculus/os/enterprise/ControllerMode;

    return-object v0
.end method

.method public getDefaultModeIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getGuardianMode()Lcom/oculus/os/enterprise/GuardianMode;
    .locals 1

    .line 178
    sget-object v0, Lcom/oculus/os/enterprise/GuardianMode;->ENABLED:Lcom/oculus/os/enterprise/GuardianMode;

    return-object v0
.end method

.method public getLicenseExpirationDate()Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModes()[Lcom/oculus/os/enterprise/Mode;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/oculus/panelapp/managedlauncher/Config$3;->val$modes:[Lcom/oculus/os/enterprise/Mode;

    return-object v0
.end method

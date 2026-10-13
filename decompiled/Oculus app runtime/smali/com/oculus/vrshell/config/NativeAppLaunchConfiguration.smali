.class public Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;
.super Ljava/lang/Object;
.source "NativeAppLaunchConfiguration.java"


# instance fields
.field private isTvApplication:Z

.field private isVrApplication:Z

.field private launchComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->launchComponent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->isVrApplication:Z

    .line 15
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->isTvApplication:Z

    return-void
.end method


# virtual methods
.method public getLaunchComponent()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->launchComponent:Ljava/lang/String;

    return-object v0
.end method

.method public isTvApplication()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->isTvApplication:Z

    return v0
.end method

.method public isVrApplication()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->isVrApplication:Z

    return v0
.end method

.method public setIsTvApplication(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->isTvApplication:Z

    return-void
.end method

.method public setIsVrApplication(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->isVrApplication:Z

    return-void
.end method

.method public setLaunchComponent(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/oculus/vrshell/config/NativeAppLaunchConfiguration;->launchComponent:Ljava/lang/String;

    return-void
.end method

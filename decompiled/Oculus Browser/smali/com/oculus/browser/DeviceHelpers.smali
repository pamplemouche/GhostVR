.class public Lcom/oculus/browser/DeviceHelpers;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUserDevBuild()Z
    .locals 2

    const-string v0, "ro.build.type"

    const-string v1, "default"

    .line 1
    invoke-static {v0, v1}, Lcom/oculus/vrapi/SystemProps;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userdev"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

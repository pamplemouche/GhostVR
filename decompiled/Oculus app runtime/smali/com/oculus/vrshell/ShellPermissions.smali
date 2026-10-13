.class public final Lcom/oculus/vrshell/ShellPermissions;
.super Ljava/lang/Object;
.source "ShellPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/ShellPermissions$Permission;,
        Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;
    }
.end annotation


# static fields
.field public static final ENVIRONMENT_ARGS_KEY:Ljava/lang/String; = "_oc_shell_permissions"

.field private static final PERMISSIONS_STRING_PREFIX:Ljava/lang/String; = "permissionsGranted"

.field private static final SPACE_DELIMITED_STRING_SPLITTER:Ljava/lang/String; = " "


# instance fields
.field private cameraPermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

.field private microphonePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

.field private writeStoragePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    iput-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->cameraPermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 142
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    iput-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->writeStoragePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 143
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    iput-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->microphonePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "permissionsGranted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " "

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 84
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 85
    aget-object v2, p1, v1

    .line 86
    sget-object v3, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    const-string v4, "-"

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    sget-object v3, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 92
    :cond_0
    sget-object v4, Lcom/oculus/vrshell/ShellPermissions$1;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    invoke-static {v2}, Lcom/oculus/vrshell/ShellPermissions$Permission;->fromString(Ljava/lang/String;)Lcom/oculus/vrshell/ShellPermissions$Permission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 100
    iput-object v3, p0, Lcom/oculus/vrshell/ShellPermissions;->writeStoragePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    goto :goto_1

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported value for Permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_2
    iput-object v3, p0, Lcom/oculus/vrshell/ShellPermissions;->microphonePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    goto :goto_1

    .line 94
    :cond_3
    iput-object v3, p0, Lcom/oculus/vrshell/ShellPermissions;->cameraPermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission string must start with permissionsGranted! Given: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    iput-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->cameraPermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 142
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    iput-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->writeStoragePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 143
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    iput-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->microphonePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 60
    invoke-static {p1, p2}, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->access$000(ZZ)Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/ShellPermissions;->cameraPermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 63
    invoke-static {p3, p4}, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->access$000(ZZ)Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/ShellPermissions;->writeStoragePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    .line 66
    invoke-static {p5, p6}, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->access$000(ZZ)Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/ShellPermissions;->microphonePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    return-void
.end method


# virtual methods
.method public isCameraPermissionGranted()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->cameraPermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCameraPermissionPermanentlyDisabled()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->cameraPermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMicrophonePermissionGranted()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->microphonePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMicrophonePermissionPermanentlyDisabled()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->microphonePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWriteStoragePermissionGranted()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->writeStoragePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->GRANTED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWriteStoragePermissionPermanentlyDisabled()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/oculus/vrshell/ShellPermissions;->writeStoragePermissionGrantState:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;->PERMANENTLY_DISABLED:Lcom/oculus/vrshell/ShellPermissions$PermissionGrantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

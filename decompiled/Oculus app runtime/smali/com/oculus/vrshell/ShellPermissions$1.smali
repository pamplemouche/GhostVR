.class synthetic Lcom/oculus/vrshell/ShellPermissions$1;
.super Ljava/lang/Object;
.source "ShellPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/ShellPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    invoke-static {}, Lcom/oculus/vrshell/ShellPermissions$Permission;->values()[Lcom/oculus/vrshell/ShellPermissions$Permission;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/vrshell/ShellPermissions$1;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$1;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->CAMERA:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$1;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->MICROPHONE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/oculus/vrshell/ShellPermissions$1;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->WRITE_STORAGE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

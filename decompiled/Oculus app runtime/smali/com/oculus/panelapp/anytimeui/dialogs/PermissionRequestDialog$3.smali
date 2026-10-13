.class synthetic Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;
.super Ljava/lang/Object;
.source "PermissionRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$panelapp$anytimeui$dialogs$PermissionRequestDialog$Product:[I

.field static final synthetic $SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 195
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->values()[Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$PermissionRequestDialog$Product:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$PermissionRequestDialog$Product:[I

    sget-object v2, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->PASSTHROUGH:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    invoke-virtual {v2}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$PermissionRequestDialog$Product:[I

    sget-object v3, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->VOICE:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    invoke-virtual {v3}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$panelapp$anytimeui$dialogs$PermissionRequestDialog$Product:[I

    sget-object v4, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->SCREENSHOT:Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;

    invoke-virtual {v4}, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$Product;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 164
    :catch_2
    invoke-static {}, Lcom/oculus/vrshell/ShellPermissions$Permission;->values()[Lcom/oculus/vrshell/ShellPermissions$Permission;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    :try_start_3
    sget-object v3, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    sget-object v4, Lcom/oculus/vrshell/ShellPermissions$Permission;->CAMERA:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v4}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    sget-object v3, Lcom/oculus/vrshell/ShellPermissions$Permission;->MICROPHONE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v3}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/PermissionRequestDialog$3;->$SwitchMap$com$oculus$vrshell$ShellPermissions$Permission:[I

    sget-object v1, Lcom/oculus/vrshell/ShellPermissions$Permission;->WRITE_STORAGE:Lcom/oculus/vrshell/ShellPermissions$Permission;

    invoke-virtual {v1}, Lcom/oculus/vrshell/ShellPermissions$Permission;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
